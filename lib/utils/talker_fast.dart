import 'package:multifast/core/config.dart';
import 'package:talker/talker.dart';

class TalkerFast {
  static final talker = Talker(
      settings: TalkerSettings(
        colors: {
          TalkerLogType.info.key: AnsiPen()..magenta(),
        },
        titles: {
          TalkerLogType.exception.key: 'Whatever you want',
          TalkerLogType.error.key: 'E',
          TalkerLogType.info.key: 'i',
        },
      ),
      //observer: TalkerObserverFast()
      );
}

class TalkerObserverFast extends TalkerObserver {
  @override
  void onError(TalkerError err) {
    super.onError(err);
    Config.printDebug(err);
  }

  @override
  void onException(TalkerException err) {
    super.onException(err);
    Config.printDebug(err);
  }

  @override
  void onLog(TalkerData log) {
    super.onLog(log);
    Config.printDebug(log);
  }
}
