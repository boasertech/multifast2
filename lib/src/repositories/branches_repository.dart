import 'dart:async';

import 'package:multifast/src/generated/auth.pb.dart';
import 'package:multifast/src/models/branch_model.dart';

class BranchesRepository {
  final _branchesController = StreamController<List<BranchModel>>.broadcast();
  final _branchSelectedController = StreamController<BranchModel?>.broadcast();

  List<BranchModel> _branches = [];
  BranchModel? _branchSelected;
  List<BranchModel> get branches => List.from(_branches);
  BranchModel? get branchSelected => _branchSelected;

  Stream<List<BranchModel>> get branchesStream => _branchesController.stream;
  Stream<BranchModel?> get branchSelectedStream => _branchSelectedController.stream;

  void initStream() {
    Future.delayed(Duration(milliseconds: 100), () {
      _branchesController.add(branches);
    });
  }

  void initStreambranchSelected() {
    Future.delayed(Duration(milliseconds: 100), () {
      _branchSelectedController.add(branchSelected);
    });
  }

  bool isLock() {
    return branches.length < 2;
  }

  void saveBranches(List<Branch> entities) {
    _branches = entities.map((branch) => BranchModel(branch)).toList();
  }

  void selectBranch(BranchModel model, List<BranchModel> list) {
    if (branchSelected != null) {
      branchSelected!.isSelected = false;
    }
    model.isSelected = true;
    _branchSelected = model;
    _branchesController.add(list);
  }

  void setBranch(Branch entity) {
    _branchSelected = BranchModel(entity, isSelected: true);
  }

  void savebranchSelected() {
    _branchSelectedController.add(branchSelected);
  }

  void searchBranch(String value) {
    final list = List.of(branches);
    final searchTerms = value.trim().split(RegExp(r'\s+')).map((e) => e.toUpperCase()).toList();

    final filteredList = list.where((branch) {
      final searchField = branch.entity.name.toUpperCase();

      return searchTerms.every((term) => searchField.contains(term));
    }).toList();

    _branchesController.add(filteredList);
  }
}
