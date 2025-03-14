import 'package:multifast/src/generated/client.pb.dart';
import 'package:multifast/src/generated/enterprise.pb.dart';
import 'package:multifast/utils/const.dart';

class EnterpriseRepository {
  List<ConstValue> validityOffers = [];
  List<ConstValue> payConditions = [];
  List<ConstValue> voucherTypes = [];
  DocumentResponse? defaultClient;
  List<ConstValue> sellers = [];

  void initValidityOffers(List<ValidityOffer> list) {
    for (var item in list) {
      final constItem = ConstValue(item.validityOfferId, item.name, length: item.duration);
      validityOffers.add(constItem);
    }
  }

  ConstValue getVailidityOffer(int offertId) {
    final list = validityOffers.where((item) => int.parse(item.id.toString()) == offertId);
    return list.first;
  }

  void initPayConditions(List<PayCondition> list) {
    for (var item in list) {
      final constItem = ConstValue(item.payConditionId, item.name);
      payConditions.add(constItem);
    }
  }

  ConstValue getPayCondition(int payId) {
    final list = payConditions.where((item) => int.parse(item.id.toString()) == payId);
    return list.first;
  }

  void initVoucherTypes(List<VoucherType> list) {
    for (var item in list) {
      final constItem = ConstValue(item.code, item.name);
      voucherTypes.add(constItem);
    }
  }

  ConstValue getVoucherType(int voucherId) {
    final list = voucherTypes.where((item) => int.parse(item.id.toString()) == voucherId);
    return list.first;
  }

  void initDefaultClient(DocumentResponse value) {
    defaultClient = value;
  }

  void initSellers(List<Seller> list) {
    for (var item in list) {
      final constItem = ConstValue(item.employeeId, item.name);
      sellers.add(constItem);
    }
  }

  ConstValue getSeller(int sellerId) {
    final list = sellers.where((item) => int.parse(item.id.toString()) == sellerId);
    return list.first;
  }
}
