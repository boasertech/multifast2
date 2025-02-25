import 'package:multifast/src/generated/enterprise.pb.dart';
import 'package:multifast/utils/const.dart';

class EnterpriseRepository {
  List<ConstValue> validityOffers = [];
  List<ConstValue> payConditions = [];

  void initValidityOffers(List<ValidityOffer> list) {
    for (var item in list) {
      final constItem = ConstValue(item.validityOfferId, item.name, length: item.duration);
      validityOffers.add(constItem);
    }
  }

  void initPayConditions(List<PayCondition> list) {
    for (var item in list) {
      final constItem = ConstValue(item.payConditionId, item.name);
      payConditions.add(constItem);
    }
  }
}
