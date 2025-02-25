import 'package:multifast/utils/const.dart';

class ClientQuotation {
  int? number;
  DateTime? date;
  ConstValue? offerValidity;
  DateTime? expiration;
  ConstValue? coinType;
  double? exchange;
  ConstValue? documentType;
  String? document;
  String? fullname;
  String? comercialName;
  String? email;
  String? location;
  String? phone1;
  String? phone2;
  DateTime? birthDate;
  ConstValue? gender;
  ConstValue? paymentType;
  ConstValue? voucherType;
  String? observation;
  List<String> otherEmails = [];
  String? seller;
}
