import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/quotation_db.dart';
import 'package:multifast/utils/const.dart';
import 'package:multifast/utils/date_format.dart';

part 'client_data_event.dart';
part 'client_data_state.dart';

class ClientDataBloc extends Bloc<ClientDataEvent, ClientDataState> {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController expirationController = TextEditingController();
  final TextEditingController exchangeController = TextEditingController();
  final TextEditingController documentController = TextEditingController();
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController comercialNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController phone1Controller = TextEditingController();
  final TextEditingController phone2Controller = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController observationController = TextEditingController();
  final TextEditingController otherEmailsController = TextEditingController();
  final TextEditingController sellerController = TextEditingController();
  ValueNotifier<bool> withExchange = ValueNotifier<bool>(false);
  ClientDataBloc() : super(ClientDataInitial()) {
    on<EditClientData>((event, emit) async {
      QuotationDb quotationDb = QuotationDb();
      int number = await quotationDb.getQuotationCount();
      number++;
      numberController.text = number.toString();
      String date = onlyDate(DateTime.now());
      dateController.text = date;
      emit(LoadClientData());
    });
  }

  void setExpirationDate(ConstValue value) {
    DateTime date = DateFormat("dd/MM/yyyy").parse(dateController.text);
    final expirationDate = date.add(Duration(days: value.length!));
    expirationController.text = onlyDate(expirationDate);
  }

  void setCoinType(ConstValue value) {
    withExchange.value = (value.id != 'PEN');
  }
}
