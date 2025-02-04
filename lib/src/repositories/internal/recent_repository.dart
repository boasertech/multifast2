import 'package:multifast/src/models/internal/recent_model.dart';
import 'package:multifast/src/repositories/abs_stream_properties.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecentRepository extends AbsStreamProperties<RecentModel, String> {
  @override
  void saveList(List<String> list) {
    final recents = list.asMap().entries.map((entry) => RecentModel(entry.key, entry.value)).toList();
    super.list = recents;
  }

  @override
  RecentModel clone(RecentModel item) {
    return item;
  }

  @override
  String forSearch(RecentModel item) {
    return item.name;
  }

  void deleteRecentSearch(int index) {
    removeItemAt(index);
    _saveCache();
    updateStream();
  }

  void isSearching(bool isSearching) {
    if (isSearching) {
      updateStreamWithTemp([]);
    } else {
      updateStream();
    }
  }

  void loadRecentSearches() async {
    final prefs = await SharedPreferences.getInstance();
    final listRecentSearches = prefs.getStringList('recentSearches') ?? [];
    saveList(listRecentSearches);
  }

  void saveRecentSearch(String value) {
    addItem(RecentModel(list.length, value));
    if (list.length > 10) {
      removeItemAt(0);
    }
    _saveCache();
  }

  void _saveCache() async {
    final recentNames = list.map((recent) => recent.name).toList();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('recentSearches', recentNames);
  }
}
