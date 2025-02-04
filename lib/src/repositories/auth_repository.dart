import 'dart:async';

import 'package:multifast/src/generated/auth.pb.dart';
import 'package:multifast/src/models/enterprise_model.dart';

class AuthRepository {
  final _enterprisesController = StreamController<List<EnterpriseModel>>.broadcast();
  final _enterpriseSelectedController = StreamController<EnterpriseModel?>.broadcast();

  List<EnterpriseModel> _enterprises = [];
  EnterpriseModel? _enterpriseSelected;
  List<EnterpriseModel> get enterprises => List.from(_enterprises);
  EnterpriseModel? get enterpriseSelected => _enterpriseSelected;

  Stream<List<EnterpriseModel>> get enterprisesStream => _enterprisesController.stream;
  Stream<EnterpriseModel?> get enterpriseSelectedStream => _enterpriseSelectedController.stream;

  void initStream() {
    Future.delayed(Duration(milliseconds: 100), () {
      _enterprisesController.add(enterprises);
    });
  }

  void initStreamEnterpriseSelected() {
    Future.delayed(Duration(milliseconds: 100), () {
      _enterpriseSelectedController.add(enterpriseSelected);
    });
  }

  bool isLock() {
    return enterprises.length < 2;
  }

  void saveEnterprises(List<Enterprise> entities) {
    _enterprises = entities.map((enterprise) => EnterpriseModel(enterprise)).toList();
  }

  void selectEnterprise(EnterpriseModel model, List<EnterpriseModel> list) {
    if (enterpriseSelected != null) {
      enterpriseSelected!.isSelected = false;
    }
    model.isSelected = true;
    _enterpriseSelected = model;
    _enterprisesController.add(list);
  }

  void setEnterprise(Enterprise entity) {
    _enterpriseSelected = EnterpriseModel(entity, isSelected: true);
    initStreamEnterpriseSelected();
  }

  void saveEnterpriseSelected() {
    _enterpriseSelectedController.add(enterpriseSelected);
  }

  void searchEnterprise(String value) {
    final list = List.of(enterprises);
    if (value.isEmpty) {
      _enterprisesController.add(list);
      return;
    }
    final filteredList =
        list.where((enterprise) => enterprise.entity.name.toLowerCase().contains(value.toLowerCase())).toList();
    _enterprisesController.add(filteredList);
  }
}
