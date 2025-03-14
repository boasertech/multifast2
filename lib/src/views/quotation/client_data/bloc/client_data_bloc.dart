import 'package:bloc/bloc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/const_repositories/enterprise_repository.dart';
import 'package:multifast/src/controllers/new_quotation_controller.dart';
import 'package:multifast/src/generated/client.pb.dart';
import 'package:multifast/src/generated/quotation.pb.dart';
import 'package:multifast/src/local_repositories/quotation_sqlite_repository.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/detail_quotation_db.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/quotation_db.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/models/internal/information_quotation_model.dart';
import 'package:multifast/src/models/quotation_sqlite_model.dart';
import 'package:multifast/src/models/sqlite/quotation_sql.dart';
import 'package:multifast/src/repositories/user_repository.dart';
import 'package:multifast/src/services/abs_client_service.dart';
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
  final TextEditingController discountPercentController = TextEditingController();
  final TextEditingController discountAmountController = TextEditingController();
  late ConstValue validityOffert;
  late ConstValue coinType;
  late ConstValue documentType;
  late ConstValue genderType;
  late ConstValue payType;
  late ConstValue voucherType;
  ConstValue? seller;
  ValueNotifier<bool> withExchange = ValueNotifier<bool>(false);
  DocumentResponse? consultDocument;

  late InformationQuotationModel infoModel;
  ClientDataBloc() : super(ClientDataInitial()) {
    on<EditClientData>((event, emit) async {
      setControllers();
      emit(LoadClientData());
    });

    on<NewQuotationEvent>((event, emit) async {
      final quotationController = getIt<NewQuotationController>();
      consultDocument = getIt<EnterpriseRepository>().defaultClient;
      quotationController.clearQuotation();
      int number = await quotationController.getNumber();
      number++;
      String date = onlyDate(DateTime.now());

      ///set info
      infoModel = InformationQuotationModel();
      infoModel.number = number.toString();
      infoModel.documentType = constDocumentsTypes.first;
      infoModel.document = consultDocument!.document;
      infoModel.fullname = consultDocument!.name;
      infoModel.date = date;
      infoModel.offerValidity = getIt<EnterpriseRepository>().validityOffers.first;
      infoModel.expirationDate = sumExpiration(infoModel.offerValidity!, date);
      infoModel.coinType = constCoins.first;
      infoModel.genderType = constGendersTypes.last;
      infoModel.payType = getIt<EnterpriseRepository>().payConditions.first;
      infoModel.voucherType = getIt<EnterpriseRepository>().voucherTypes.first;

      ///set controllers
      setControllers();

      emit(NewQuotationState(false));
    });

    on<EditQuotationEvent>((event, emit) async {
      final request = event.request;
      final repo = getIt<EnterpriseRepository>();
      final clientService = getIt<AbsClientService>();
      infoModel = InformationQuotationModel();
      DocumentRequest documentRequest = DocumentRequest()..clientId = Int64(request.entity.clientId!);
      documentRequest.companyRuc = getIt<UserRepository>().user.company.companyRuc;
      documentRequest.document = 'prueba';
      documentRequest.codeDocument = request.entity.documentTypeId!.toString();
      final result = await clientService.consultDocument(documentRequest);
      result.fold(
        (error) => emit(ErrorClientData(error)),
        (response) {
          consultDocument = response;
        },
      );
      infoModel.quotationId = request.entity.quotationId;
      infoModel.number = request.entity.numberQuotation.toString();
      infoModel.date = request.entity.dateQuotation;
      infoModel.offerValidity = repo.getVailidityOffer(request.entity.validityId!);
      infoModel.expirationDate = sumExpiration(infoModel.offerValidity!, infoModel.date!);
      infoModel.coinType = getCoin(request.entity.coinId.toString());
      infoModel.exchange = request.entity.coinChange;
      infoModel.documentType = getDocumentType(request.entity.documentTypeId!);
      infoModel.document = consultDocument!.document;
      infoModel.fullname = consultDocument!.name;
      infoModel.comercialName = '';
      infoModel.email = '';
      infoModel.location = '';
      infoModel.phone1 = consultDocument!.principalPhone;
      infoModel.phone2 = consultDocument!.secondPhone;
      infoModel.birthDate = consultDocument!.birthDate;
      infoModel.genderType = getGenderByCode(consultDocument!.gender);
      infoModel.payType = repo.getPayCondition(request.entity.payId!);
      infoModel.voucherType = repo.getVoucherType(request.entity.voucherId!);
      infoModel.observations = request.entity.observation;
      infoModel.otherEmails = '';
      infoModel.seller = repo.getSeller(request.entity.sellerId!);

      setControllers();

      final quotationController = getIt<NewQuotationController>();
      quotationController.setDetails(request.details);
      emit(NewQuotationState(true, onlySee: event.onlySee));
    });

    on<ConsultDocumentEvent>((event, emit) async {
      emit(LoadingConsultDocument());
      final clientService = getIt<AbsClientService>();
      final result = await clientService.consultDocument(event.request);
      result.fold(
        (error) => emit(ErrorClientData(error)),
        (response) {
          consultDocument = response;
          fullnameController.text = response.name;
          genderType = getGenderByCode(response.gender)!;
          emit(SuccessConsultDocument());
        },
      );
    });

    on<RegisterQuotationEvent>((event, emit) async {
      await getIt<NewQuotationController>()
          .saveNewQuotation(infoModel, consultDocument!.clientId.toInt(), event.isEdit);
      final list = await getIt<QuotationDb>().getAllQuotations();
      final details = await getIt<DetailQuotationDb>().getAllQuotations();
      getIt<QuotationSqliteRepository>().setAllData(list, details);
      emit(SuccessSaveQuotation());
    });

    on<RegisterQuotationBdEvent>((event, emit) {
      final request = QuotationRequest();
      final user = getIt<UserRepository>().user;
      request.companyRuc = user.company.companyRuc;
      request.emisionDate = infoModel.date!;
      request.validityId = Int64(int.parse(infoModel.offerValidity!.id.toString()));
      request.validityDuration = infoModel.offerValidity!.length!;
      request.expirationDate = infoModel.expirationDate!;
      request.coin = infoModel.coinType!.id.toString();
      request.changeCash = infoModel.exchange ?? 0;
      request.clientId = consultDocument!.clientId;
      request.clientTypeDocument = consultDocument!.documentTypeCode;
      request.clientDocument = infoModel.document!;
      request.clientName = infoModel.fullname!;
      request.clientEmail = infoModel.email ?? '';
      request.clientLocation = infoModel.location ?? '';
      //request.paymentConditionId = infoModel.
      request.observations = infoModel.observations ?? '';
      request.userId = user.userId;
      
    });

    on<LoadQuotationEvent>((event, emit) async {
      final list = await getIt<QuotationDb>().getAllQuotations();
      final details = await getIt<DetailQuotationDb>().getAllQuotations();
      getIt<QuotationSqliteRepository>().setAllData(list, details);
      emit(LoadQuotation(list));
    });
  }

  String? isValidityDataCorrect() {
    if (infoModel.seller == null) {
      return 'Seleccione un vendedor';
    }
    return null;
  }

  void setControllers() {
    ///default
    numberController.text = infoModel.number.toString();
    dateController.text = infoModel.date.toString();
    validityOffert = infoModel.offerValidity!;
    setExpirationDate(validityOffert);
    setCoinType(infoModel.coinType!);
    exchangeController.text = infoModel.exchange != null ? infoModel.toString() : '';
    documentType = infoModel.documentType!;
    documentController.text = infoModel.document.toString();
    fullnameController.text = infoModel.fullname.toString();
    comercialNameController.text = infoModel.comercialName ?? '';
    emailController.text = infoModel.email ?? '';
    locationController.text = infoModel.email ?? '';
    phone1Controller.text = infoModel.phone1 ?? '';
    phone2Controller.text = infoModel.phone2 ?? '';
    birthDateController.text = infoModel.birthDate ?? '';
    genderType = infoModel.genderType ?? constGendersTypes.last;
    payType = infoModel.payType!;
    voucherType = infoModel.voucherType!;
    observationController.text = infoModel.observations ?? '';
    otherEmailsController.text = infoModel.otherEmails ?? '';
    seller = infoModel.seller;
  }

  void updateData() {
    infoModel.date = dateController.text;
    infoModel.offerValidity = validityOffert;
    infoModel.expirationDate = expirationController.text;
    infoModel.coinType = coinType;
    infoModel.exchange = double.tryParse(exchangeController.text);
    infoModel.documentType = documentType;
    infoModel.document = documentController.text;
    infoModel.fullname = fullnameController.text;
    infoModel.comercialName = comercialNameController.text;
    infoModel.email = emailController.text;
    infoModel.location = locationController.text;
    infoModel.phone1 = phone1Controller.text;
    infoModel.phone2 = phone2Controller.text;
    infoModel.birthDate = birthDateController.text;
    infoModel.genderType = genderType;
    infoModel.payType = payType;
    infoModel.voucherType = voucherType;
    infoModel.observations = observationController.text;
    infoModel.otherEmails = otherEmailsController.text;
    infoModel.seller = seller;
  }

  ConstValue? getGenderByCode(String gender) {
    if (gender.isEmpty) {
      return constGendersTypes.last;
    }
    final constValue = constGendersTypes.where((item) => item.id.toString() == gender.substring(0, 1)).firstOrNull;
    return constValue ?? constGendersTypes.last;
  }

  bool validityClient() {
    return documentController.text == consultDocument!.document;
  }

  String getFullnameView() {
    List<String> words = fullnameController.text.trim().split(RegExp(r'\s+'));
    if (words.isEmpty) return "";
    String fullname = words.take(2).join(" ");
    return fullname.length > 25 ? "${fullname.substring(0, 25)}..." : fullname;
  }

  void setExpirationDate(ConstValue value) {
    DateTime date = DateFormat("dd/MM/yyyy").parse(dateController.text);
    final expirationDate = date.add(Duration(days: value.length!));
    expirationController.text = onlyDate(expirationDate);
  }

  String sumExpiration(ConstValue value, String currentDate) {
    DateTime date = DateFormat("dd/MM/yyyy").parse(currentDate);
    final expirationDate = date.add(Duration(days: value.length!));
    return onlyDate(expirationDate);
  }

  void setCoinType(ConstValue value) {
    coinType = value;
    withExchange.value = (value.id != 'PEN');
  }
}
