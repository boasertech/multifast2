//
//  Generated code. Do not modify.
//  source: quotation.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'error.pb.dart' as $1;

class QuotationRequest extends $pb.GeneratedMessage {
  factory QuotationRequest({
    $core.String? companyRuc,
    $core.String? emisionDate,
    $fixnum.Int64? validityId,
    $core.int? validityDuration,
    $core.String? expirationDate,
    $core.String? coin,
    $core.double? changeType,
    $fixnum.Int64? clientId,
    $core.String? clientTypeDocument,
    $core.String? clientDocument,
    $core.String? clientName,
    $core.String? clientEmail,
    $core.String? clientLocation,
    $fixnum.Int64? paymentConditionId,
    $core.String? observations,
    $core.int? userId,
    $core.int? operationType,
    $core.String? operationCode,
    $core.String? totalWords,
    $core.double? totalSub,
    $core.double? tax,
    $core.double? rounding,
    $core.double? total,
    $core.double? discount,
    $core.double? discountWithOutTax,
    $fixnum.Int64? branchId,
    $core.String? documentType,
    $core.double? weight,
    $core.String? seller,
    $fixnum.Int64? formatId,
    $core.bool? outputNote,
    $fixnum.Int64? storageId,
    $fixnum.Int64? quotationTypeDocumentId,
    $core.int? typeId,
    $fixnum.Int64? zoneId,
    $fixnum.Int64? deliveryVehicle,
    $core.String? deliveryDate,
    $fixnum.Int64? employeeId,
    $fixnum.Int64? branchSaleId,
    $core.String? emisorRuc,
    $core.String? serie,
    $core.String? documentTypeCode,
    $core.double? globalDiscount,
    $core.String? responsible,
    $core.String? shipping,
    $core.String? supervisorRequesting,
    $core.String? warranty,
    $core.double? sellAmount,
    $core.double? sellBalance,
    $fixnum.Int64? onlineServiceTypeid,
    $fixnum.Int64? modeServiceId,
    $fixnum.Int64? sellPlace,
    $core.double? sellerCommissionSale,
    $core.double? taxApplied,
    $core.double? taxUnitApplied,
    $core.bool? isTransfer,
    $fixnum.Int64? storageDestinationId,
    $core.bool? isCreditSumulation,
    $core.double? cash,
    $core.double? changeCash,
    $core.String? periodImportDate,
    $core.String? note,
    $core.String? json,
    $core.double? freeAmount,
    $core.double? salesTax,
    $core.String? clientPhone,
    $fixnum.Int64? dateId,
    $core.String? plate,
    $core.int? paymentConditionRestaurant,
    $core.int? vehicleType,
    $core.int? counterType,
    $core.String? restaurantChannel,
    $core.String? restaurantWaiter,
    $core.String? cardDetail,
    $core.Iterable<QuotationDetail>? items,
  }) {
    final $result = create();
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    if (emisionDate != null) {
      $result.emisionDate = emisionDate;
    }
    if (validityId != null) {
      $result.validityId = validityId;
    }
    if (validityDuration != null) {
      $result.validityDuration = validityDuration;
    }
    if (expirationDate != null) {
      $result.expirationDate = expirationDate;
    }
    if (coin != null) {
      $result.coin = coin;
    }
    if (changeType != null) {
      $result.changeType = changeType;
    }
    if (clientId != null) {
      $result.clientId = clientId;
    }
    if (clientTypeDocument != null) {
      $result.clientTypeDocument = clientTypeDocument;
    }
    if (clientDocument != null) {
      $result.clientDocument = clientDocument;
    }
    if (clientName != null) {
      $result.clientName = clientName;
    }
    if (clientEmail != null) {
      $result.clientEmail = clientEmail;
    }
    if (clientLocation != null) {
      $result.clientLocation = clientLocation;
    }
    if (paymentConditionId != null) {
      $result.paymentConditionId = paymentConditionId;
    }
    if (observations != null) {
      $result.observations = observations;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (operationType != null) {
      $result.operationType = operationType;
    }
    if (operationCode != null) {
      $result.operationCode = operationCode;
    }
    if (totalWords != null) {
      $result.totalWords = totalWords;
    }
    if (totalSub != null) {
      $result.totalSub = totalSub;
    }
    if (tax != null) {
      $result.tax = tax;
    }
    if (rounding != null) {
      $result.rounding = rounding;
    }
    if (total != null) {
      $result.total = total;
    }
    if (discount != null) {
      $result.discount = discount;
    }
    if (discountWithOutTax != null) {
      $result.discountWithOutTax = discountWithOutTax;
    }
    if (branchId != null) {
      $result.branchId = branchId;
    }
    if (documentType != null) {
      $result.documentType = documentType;
    }
    if (weight != null) {
      $result.weight = weight;
    }
    if (seller != null) {
      $result.seller = seller;
    }
    if (formatId != null) {
      $result.formatId = formatId;
    }
    if (outputNote != null) {
      $result.outputNote = outputNote;
    }
    if (storageId != null) {
      $result.storageId = storageId;
    }
    if (quotationTypeDocumentId != null) {
      $result.quotationTypeDocumentId = quotationTypeDocumentId;
    }
    if (typeId != null) {
      $result.typeId = typeId;
    }
    if (zoneId != null) {
      $result.zoneId = zoneId;
    }
    if (deliveryVehicle != null) {
      $result.deliveryVehicle = deliveryVehicle;
    }
    if (deliveryDate != null) {
      $result.deliveryDate = deliveryDate;
    }
    if (employeeId != null) {
      $result.employeeId = employeeId;
    }
    if (branchSaleId != null) {
      $result.branchSaleId = branchSaleId;
    }
    if (emisorRuc != null) {
      $result.emisorRuc = emisorRuc;
    }
    if (serie != null) {
      $result.serie = serie;
    }
    if (documentTypeCode != null) {
      $result.documentTypeCode = documentTypeCode;
    }
    if (globalDiscount != null) {
      $result.globalDiscount = globalDiscount;
    }
    if (responsible != null) {
      $result.responsible = responsible;
    }
    if (shipping != null) {
      $result.shipping = shipping;
    }
    if (supervisorRequesting != null) {
      $result.supervisorRequesting = supervisorRequesting;
    }
    if (warranty != null) {
      $result.warranty = warranty;
    }
    if (sellAmount != null) {
      $result.sellAmount = sellAmount;
    }
    if (sellBalance != null) {
      $result.sellBalance = sellBalance;
    }
    if (onlineServiceTypeid != null) {
      $result.onlineServiceTypeid = onlineServiceTypeid;
    }
    if (modeServiceId != null) {
      $result.modeServiceId = modeServiceId;
    }
    if (sellPlace != null) {
      $result.sellPlace = sellPlace;
    }
    if (sellerCommissionSale != null) {
      $result.sellerCommissionSale = sellerCommissionSale;
    }
    if (taxApplied != null) {
      $result.taxApplied = taxApplied;
    }
    if (taxUnitApplied != null) {
      $result.taxUnitApplied = taxUnitApplied;
    }
    if (isTransfer != null) {
      $result.isTransfer = isTransfer;
    }
    if (storageDestinationId != null) {
      $result.storageDestinationId = storageDestinationId;
    }
    if (isCreditSumulation != null) {
      $result.isCreditSumulation = isCreditSumulation;
    }
    if (cash != null) {
      $result.cash = cash;
    }
    if (changeCash != null) {
      $result.changeCash = changeCash;
    }
    if (periodImportDate != null) {
      $result.periodImportDate = periodImportDate;
    }
    if (note != null) {
      $result.note = note;
    }
    if (json != null) {
      $result.json = json;
    }
    if (freeAmount != null) {
      $result.freeAmount = freeAmount;
    }
    if (salesTax != null) {
      $result.salesTax = salesTax;
    }
    if (clientPhone != null) {
      $result.clientPhone = clientPhone;
    }
    if (dateId != null) {
      $result.dateId = dateId;
    }
    if (plate != null) {
      $result.plate = plate;
    }
    if (paymentConditionRestaurant != null) {
      $result.paymentConditionRestaurant = paymentConditionRestaurant;
    }
    if (vehicleType != null) {
      $result.vehicleType = vehicleType;
    }
    if (counterType != null) {
      $result.counterType = counterType;
    }
    if (restaurantChannel != null) {
      $result.restaurantChannel = restaurantChannel;
    }
    if (restaurantWaiter != null) {
      $result.restaurantWaiter = restaurantWaiter;
    }
    if (cardDetail != null) {
      $result.cardDetail = cardDetail;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  QuotationRequest._() : super();
  factory QuotationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuotationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuotationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'quotation'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..aOS(2, _omitFieldNames ? '' : 'emisionDate', protoName: 'emisionDate')
    ..aInt64(3, _omitFieldNames ? '' : 'validityId', protoName: 'validityId')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'validityDuration', $pb.PbFieldType.O3, protoName: 'validityDuration')
    ..aOS(5, _omitFieldNames ? '' : 'expirationDate', protoName: 'expirationDate')
    ..aOS(6, _omitFieldNames ? '' : 'coin')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'changeType', $pb.PbFieldType.OD, protoName: 'changeType')
    ..aInt64(8, _omitFieldNames ? '' : 'clientId', protoName: 'clientId')
    ..aOS(9, _omitFieldNames ? '' : 'clientTypeDocument', protoName: 'clientTypeDocument')
    ..aOS(10, _omitFieldNames ? '' : 'clientDocument', protoName: 'clientDocument')
    ..aOS(11, _omitFieldNames ? '' : 'clientName', protoName: 'clientName')
    ..aOS(12, _omitFieldNames ? '' : 'clientEmail', protoName: 'clientEmail')
    ..aOS(13, _omitFieldNames ? '' : 'clientLocation', protoName: 'clientLocation')
    ..aInt64(14, _omitFieldNames ? '' : 'paymentConditionId', protoName: 'paymentConditionId')
    ..aOS(15, _omitFieldNames ? '' : 'observations')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(17, _omitFieldNames ? '' : 'operationType', $pb.PbFieldType.O3, protoName: 'operationType')
    ..aOS(18, _omitFieldNames ? '' : 'operationCode', protoName: 'operationCode')
    ..aOS(19, _omitFieldNames ? '' : 'totalWords', protoName: 'totalWords')
    ..a<$core.double>(20, _omitFieldNames ? '' : 'totalSub', $pb.PbFieldType.OD, protoName: 'totalSub')
    ..a<$core.double>(21, _omitFieldNames ? '' : 'tax', $pb.PbFieldType.OD)
    ..a<$core.double>(22, _omitFieldNames ? '' : 'rounding', $pb.PbFieldType.OD)
    ..a<$core.double>(23, _omitFieldNames ? '' : 'total', $pb.PbFieldType.OD)
    ..a<$core.double>(24, _omitFieldNames ? '' : 'discount', $pb.PbFieldType.OD)
    ..a<$core.double>(25, _omitFieldNames ? '' : 'discountWithOutTax', $pb.PbFieldType.OD, protoName: 'discountWithOutTax')
    ..aInt64(26, _omitFieldNames ? '' : 'branchId', protoName: 'branchId')
    ..aOS(27, _omitFieldNames ? '' : 'documentType', protoName: 'documentType')
    ..a<$core.double>(28, _omitFieldNames ? '' : 'weight', $pb.PbFieldType.OD)
    ..aOS(29, _omitFieldNames ? '' : 'seller')
    ..aInt64(30, _omitFieldNames ? '' : 'formatId', protoName: 'formatId')
    ..aOB(31, _omitFieldNames ? '' : 'outputNote', protoName: 'outputNote')
    ..aInt64(32, _omitFieldNames ? '' : 'storageId', protoName: 'storageId')
    ..aInt64(33, _omitFieldNames ? '' : 'quotationTypeDocumentId', protoName: 'quotationTypeDocumentId')
    ..a<$core.int>(34, _omitFieldNames ? '' : 'typeId', $pb.PbFieldType.O3, protoName: 'typeId')
    ..aInt64(35, _omitFieldNames ? '' : 'zoneId', protoName: 'zoneId')
    ..aInt64(36, _omitFieldNames ? '' : 'deliveryVehicle', protoName: 'deliveryVehicle')
    ..aOS(37, _omitFieldNames ? '' : 'deliveryDate', protoName: 'deliveryDate')
    ..aInt64(38, _omitFieldNames ? '' : 'employeeId', protoName: 'employeeId')
    ..aInt64(39, _omitFieldNames ? '' : 'branchSaleId', protoName: 'branchSaleId')
    ..aOS(40, _omitFieldNames ? '' : 'emisorRuc', protoName: 'emisorRuc')
    ..aOS(41, _omitFieldNames ? '' : 'serie')
    ..aOS(42, _omitFieldNames ? '' : 'documentTypeCode', protoName: 'documentTypeCode')
    ..a<$core.double>(43, _omitFieldNames ? '' : 'globalDiscount', $pb.PbFieldType.OD, protoName: 'globalDiscount')
    ..aOS(44, _omitFieldNames ? '' : 'responsible')
    ..aOS(45, _omitFieldNames ? '' : 'shipping')
    ..aOS(46, _omitFieldNames ? '' : 'supervisorRequesting', protoName: 'supervisorRequesting')
    ..aOS(47, _omitFieldNames ? '' : 'warranty')
    ..a<$core.double>(48, _omitFieldNames ? '' : 'sellAmount', $pb.PbFieldType.OD, protoName: 'sellAmount')
    ..a<$core.double>(49, _omitFieldNames ? '' : 'sellBalance', $pb.PbFieldType.OD, protoName: 'sellBalance')
    ..aInt64(50, _omitFieldNames ? '' : 'onlineServiceTypeid', protoName: 'onlineServiceTypeid')
    ..aInt64(51, _omitFieldNames ? '' : 'modeServiceId', protoName: 'modeServiceId')
    ..aInt64(52, _omitFieldNames ? '' : 'sellPlace', protoName: 'sellPlace')
    ..a<$core.double>(53, _omitFieldNames ? '' : 'sellerCommissionSale', $pb.PbFieldType.OD, protoName: 'sellerCommissionSale')
    ..a<$core.double>(54, _omitFieldNames ? '' : 'taxApplied', $pb.PbFieldType.OD, protoName: 'taxApplied')
    ..a<$core.double>(55, _omitFieldNames ? '' : 'taxUnitApplied', $pb.PbFieldType.OD, protoName: 'taxUnitApplied')
    ..aOB(56, _omitFieldNames ? '' : 'isTransfer', protoName: 'isTransfer')
    ..aInt64(57, _omitFieldNames ? '' : 'storageDestinationId', protoName: 'storageDestinationId')
    ..aOB(58, _omitFieldNames ? '' : 'isCreditSumulation', protoName: 'isCreditSumulation')
    ..a<$core.double>(59, _omitFieldNames ? '' : 'cash', $pb.PbFieldType.OD)
    ..a<$core.double>(60, _omitFieldNames ? '' : 'changeCash', $pb.PbFieldType.OD, protoName: 'changeCash')
    ..aOS(61, _omitFieldNames ? '' : 'periodImportDate', protoName: 'periodImportDate')
    ..aOS(62, _omitFieldNames ? '' : 'note')
    ..aOS(63, _omitFieldNames ? '' : 'json')
    ..a<$core.double>(64, _omitFieldNames ? '' : 'freeAmount', $pb.PbFieldType.OD, protoName: 'freeAmount')
    ..a<$core.double>(65, _omitFieldNames ? '' : 'salesTax', $pb.PbFieldType.OD, protoName: 'salesTax')
    ..aOS(66, _omitFieldNames ? '' : 'clientPhone', protoName: 'clientPhone')
    ..aInt64(67, _omitFieldNames ? '' : 'dateId', protoName: 'dateId')
    ..aOS(68, _omitFieldNames ? '' : 'plate')
    ..a<$core.int>(69, _omitFieldNames ? '' : 'paymentConditionRestaurant', $pb.PbFieldType.O3, protoName: 'paymentConditionRestaurant')
    ..a<$core.int>(70, _omitFieldNames ? '' : 'vehicleType', $pb.PbFieldType.O3, protoName: 'vehicleType')
    ..a<$core.int>(71, _omitFieldNames ? '' : 'counterType', $pb.PbFieldType.O3, protoName: 'counterType')
    ..aOS(72, _omitFieldNames ? '' : 'restaurantChannel', protoName: 'restaurantChannel')
    ..aOS(73, _omitFieldNames ? '' : 'restaurantWaiter', protoName: 'restaurantWaiter')
    ..aOS(74, _omitFieldNames ? '' : 'cardDetail', protoName: 'cardDetail')
    ..pc<QuotationDetail>(75, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: QuotationDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuotationRequest clone() => QuotationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuotationRequest copyWith(void Function(QuotationRequest) updates) => super.copyWith((message) => updates(message as QuotationRequest)) as QuotationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuotationRequest create() => QuotationRequest._();
  QuotationRequest createEmptyInstance() => create();
  static $pb.PbList<QuotationRequest> createRepeated() => $pb.PbList<QuotationRequest>();
  @$core.pragma('dart2js:noInline')
  static QuotationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuotationRequest>(create);
  static QuotationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get companyRuc => $_getSZ(0);
  @$pb.TagNumber(1)
  set companyRuc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompanyRuc() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompanyRuc() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get emisionDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set emisionDate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmisionDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmisionDate() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get validityId => $_getI64(2);
  @$pb.TagNumber(3)
  set validityId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValidityId() => $_has(2);
  @$pb.TagNumber(3)
  void clearValidityId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get validityDuration => $_getIZ(3);
  @$pb.TagNumber(4)
  set validityDuration($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidityDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidityDuration() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get expirationDate => $_getSZ(4);
  @$pb.TagNumber(5)
  set expirationDate($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpirationDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpirationDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get coin => $_getSZ(5);
  @$pb.TagNumber(6)
  set coin($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCoin() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoin() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get changeType => $_getN(6);
  @$pb.TagNumber(7)
  set changeType($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChangeType() => $_has(6);
  @$pb.TagNumber(7)
  void clearChangeType() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get clientId => $_getI64(7);
  @$pb.TagNumber(8)
  set clientId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasClientId() => $_has(7);
  @$pb.TagNumber(8)
  void clearClientId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get clientTypeDocument => $_getSZ(8);
  @$pb.TagNumber(9)
  set clientTypeDocument($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasClientTypeDocument() => $_has(8);
  @$pb.TagNumber(9)
  void clearClientTypeDocument() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get clientDocument => $_getSZ(9);
  @$pb.TagNumber(10)
  set clientDocument($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasClientDocument() => $_has(9);
  @$pb.TagNumber(10)
  void clearClientDocument() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get clientName => $_getSZ(10);
  @$pb.TagNumber(11)
  set clientName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasClientName() => $_has(10);
  @$pb.TagNumber(11)
  void clearClientName() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get clientEmail => $_getSZ(11);
  @$pb.TagNumber(12)
  set clientEmail($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasClientEmail() => $_has(11);
  @$pb.TagNumber(12)
  void clearClientEmail() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get clientLocation => $_getSZ(12);
  @$pb.TagNumber(13)
  set clientLocation($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasClientLocation() => $_has(12);
  @$pb.TagNumber(13)
  void clearClientLocation() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get paymentConditionId => $_getI64(13);
  @$pb.TagNumber(14)
  set paymentConditionId($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPaymentConditionId() => $_has(13);
  @$pb.TagNumber(14)
  void clearPaymentConditionId() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get observations => $_getSZ(14);
  @$pb.TagNumber(15)
  set observations($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasObservations() => $_has(14);
  @$pb.TagNumber(15)
  void clearObservations() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get userId => $_getIZ(15);
  @$pb.TagNumber(16)
  set userId($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasUserId() => $_has(15);
  @$pb.TagNumber(16)
  void clearUserId() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get operationType => $_getIZ(16);
  @$pb.TagNumber(17)
  set operationType($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasOperationType() => $_has(16);
  @$pb.TagNumber(17)
  void clearOperationType() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get operationCode => $_getSZ(17);
  @$pb.TagNumber(18)
  set operationCode($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasOperationCode() => $_has(17);
  @$pb.TagNumber(18)
  void clearOperationCode() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get totalWords => $_getSZ(18);
  @$pb.TagNumber(19)
  set totalWords($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasTotalWords() => $_has(18);
  @$pb.TagNumber(19)
  void clearTotalWords() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get totalSub => $_getN(19);
  @$pb.TagNumber(20)
  set totalSub($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasTotalSub() => $_has(19);
  @$pb.TagNumber(20)
  void clearTotalSub() => clearField(20);

  @$pb.TagNumber(21)
  $core.double get tax => $_getN(20);
  @$pb.TagNumber(21)
  set tax($core.double v) { $_setDouble(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasTax() => $_has(20);
  @$pb.TagNumber(21)
  void clearTax() => clearField(21);

  @$pb.TagNumber(22)
  $core.double get rounding => $_getN(21);
  @$pb.TagNumber(22)
  set rounding($core.double v) { $_setDouble(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasRounding() => $_has(21);
  @$pb.TagNumber(22)
  void clearRounding() => clearField(22);

  @$pb.TagNumber(23)
  $core.double get total => $_getN(22);
  @$pb.TagNumber(23)
  set total($core.double v) { $_setDouble(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasTotal() => $_has(22);
  @$pb.TagNumber(23)
  void clearTotal() => clearField(23);

  @$pb.TagNumber(24)
  $core.double get discount => $_getN(23);
  @$pb.TagNumber(24)
  set discount($core.double v) { $_setDouble(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasDiscount() => $_has(23);
  @$pb.TagNumber(24)
  void clearDiscount() => clearField(24);

  @$pb.TagNumber(25)
  $core.double get discountWithOutTax => $_getN(24);
  @$pb.TagNumber(25)
  set discountWithOutTax($core.double v) { $_setDouble(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasDiscountWithOutTax() => $_has(24);
  @$pb.TagNumber(25)
  void clearDiscountWithOutTax() => clearField(25);

  @$pb.TagNumber(26)
  $fixnum.Int64 get branchId => $_getI64(25);
  @$pb.TagNumber(26)
  set branchId($fixnum.Int64 v) { $_setInt64(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasBranchId() => $_has(25);
  @$pb.TagNumber(26)
  void clearBranchId() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get documentType => $_getSZ(26);
  @$pb.TagNumber(27)
  set documentType($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasDocumentType() => $_has(26);
  @$pb.TagNumber(27)
  void clearDocumentType() => clearField(27);

  @$pb.TagNumber(28)
  $core.double get weight => $_getN(27);
  @$pb.TagNumber(28)
  set weight($core.double v) { $_setDouble(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasWeight() => $_has(27);
  @$pb.TagNumber(28)
  void clearWeight() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get seller => $_getSZ(28);
  @$pb.TagNumber(29)
  set seller($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasSeller() => $_has(28);
  @$pb.TagNumber(29)
  void clearSeller() => clearField(29);

  @$pb.TagNumber(30)
  $fixnum.Int64 get formatId => $_getI64(29);
  @$pb.TagNumber(30)
  set formatId($fixnum.Int64 v) { $_setInt64(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasFormatId() => $_has(29);
  @$pb.TagNumber(30)
  void clearFormatId() => clearField(30);

  @$pb.TagNumber(31)
  $core.bool get outputNote => $_getBF(30);
  @$pb.TagNumber(31)
  set outputNote($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasOutputNote() => $_has(30);
  @$pb.TagNumber(31)
  void clearOutputNote() => clearField(31);

  @$pb.TagNumber(32)
  $fixnum.Int64 get storageId => $_getI64(31);
  @$pb.TagNumber(32)
  set storageId($fixnum.Int64 v) { $_setInt64(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasStorageId() => $_has(31);
  @$pb.TagNumber(32)
  void clearStorageId() => clearField(32);

  @$pb.TagNumber(33)
  $fixnum.Int64 get quotationTypeDocumentId => $_getI64(32);
  @$pb.TagNumber(33)
  set quotationTypeDocumentId($fixnum.Int64 v) { $_setInt64(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasQuotationTypeDocumentId() => $_has(32);
  @$pb.TagNumber(33)
  void clearQuotationTypeDocumentId() => clearField(33);

  @$pb.TagNumber(34)
  $core.int get typeId => $_getIZ(33);
  @$pb.TagNumber(34)
  set typeId($core.int v) { $_setSignedInt32(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasTypeId() => $_has(33);
  @$pb.TagNumber(34)
  void clearTypeId() => clearField(34);

  @$pb.TagNumber(35)
  $fixnum.Int64 get zoneId => $_getI64(34);
  @$pb.TagNumber(35)
  set zoneId($fixnum.Int64 v) { $_setInt64(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasZoneId() => $_has(34);
  @$pb.TagNumber(35)
  void clearZoneId() => clearField(35);

  @$pb.TagNumber(36)
  $fixnum.Int64 get deliveryVehicle => $_getI64(35);
  @$pb.TagNumber(36)
  set deliveryVehicle($fixnum.Int64 v) { $_setInt64(35, v); }
  @$pb.TagNumber(36)
  $core.bool hasDeliveryVehicle() => $_has(35);
  @$pb.TagNumber(36)
  void clearDeliveryVehicle() => clearField(36);

  @$pb.TagNumber(37)
  $core.String get deliveryDate => $_getSZ(36);
  @$pb.TagNumber(37)
  set deliveryDate($core.String v) { $_setString(36, v); }
  @$pb.TagNumber(37)
  $core.bool hasDeliveryDate() => $_has(36);
  @$pb.TagNumber(37)
  void clearDeliveryDate() => clearField(37);

  @$pb.TagNumber(38)
  $fixnum.Int64 get employeeId => $_getI64(37);
  @$pb.TagNumber(38)
  set employeeId($fixnum.Int64 v) { $_setInt64(37, v); }
  @$pb.TagNumber(38)
  $core.bool hasEmployeeId() => $_has(37);
  @$pb.TagNumber(38)
  void clearEmployeeId() => clearField(38);

  @$pb.TagNumber(39)
  $fixnum.Int64 get branchSaleId => $_getI64(38);
  @$pb.TagNumber(39)
  set branchSaleId($fixnum.Int64 v) { $_setInt64(38, v); }
  @$pb.TagNumber(39)
  $core.bool hasBranchSaleId() => $_has(38);
  @$pb.TagNumber(39)
  void clearBranchSaleId() => clearField(39);

  @$pb.TagNumber(40)
  $core.String get emisorRuc => $_getSZ(39);
  @$pb.TagNumber(40)
  set emisorRuc($core.String v) { $_setString(39, v); }
  @$pb.TagNumber(40)
  $core.bool hasEmisorRuc() => $_has(39);
  @$pb.TagNumber(40)
  void clearEmisorRuc() => clearField(40);

  @$pb.TagNumber(41)
  $core.String get serie => $_getSZ(40);
  @$pb.TagNumber(41)
  set serie($core.String v) { $_setString(40, v); }
  @$pb.TagNumber(41)
  $core.bool hasSerie() => $_has(40);
  @$pb.TagNumber(41)
  void clearSerie() => clearField(41);

  @$pb.TagNumber(42)
  $core.String get documentTypeCode => $_getSZ(41);
  @$pb.TagNumber(42)
  set documentTypeCode($core.String v) { $_setString(41, v); }
  @$pb.TagNumber(42)
  $core.bool hasDocumentTypeCode() => $_has(41);
  @$pb.TagNumber(42)
  void clearDocumentTypeCode() => clearField(42);

  @$pb.TagNumber(43)
  $core.double get globalDiscount => $_getN(42);
  @$pb.TagNumber(43)
  set globalDiscount($core.double v) { $_setDouble(42, v); }
  @$pb.TagNumber(43)
  $core.bool hasGlobalDiscount() => $_has(42);
  @$pb.TagNumber(43)
  void clearGlobalDiscount() => clearField(43);

  @$pb.TagNumber(44)
  $core.String get responsible => $_getSZ(43);
  @$pb.TagNumber(44)
  set responsible($core.String v) { $_setString(43, v); }
  @$pb.TagNumber(44)
  $core.bool hasResponsible() => $_has(43);
  @$pb.TagNumber(44)
  void clearResponsible() => clearField(44);

  @$pb.TagNumber(45)
  $core.String get shipping => $_getSZ(44);
  @$pb.TagNumber(45)
  set shipping($core.String v) { $_setString(44, v); }
  @$pb.TagNumber(45)
  $core.bool hasShipping() => $_has(44);
  @$pb.TagNumber(45)
  void clearShipping() => clearField(45);

  @$pb.TagNumber(46)
  $core.String get supervisorRequesting => $_getSZ(45);
  @$pb.TagNumber(46)
  set supervisorRequesting($core.String v) { $_setString(45, v); }
  @$pb.TagNumber(46)
  $core.bool hasSupervisorRequesting() => $_has(45);
  @$pb.TagNumber(46)
  void clearSupervisorRequesting() => clearField(46);

  @$pb.TagNumber(47)
  $core.String get warranty => $_getSZ(46);
  @$pb.TagNumber(47)
  set warranty($core.String v) { $_setString(46, v); }
  @$pb.TagNumber(47)
  $core.bool hasWarranty() => $_has(46);
  @$pb.TagNumber(47)
  void clearWarranty() => clearField(47);

  @$pb.TagNumber(48)
  $core.double get sellAmount => $_getN(47);
  @$pb.TagNumber(48)
  set sellAmount($core.double v) { $_setDouble(47, v); }
  @$pb.TagNumber(48)
  $core.bool hasSellAmount() => $_has(47);
  @$pb.TagNumber(48)
  void clearSellAmount() => clearField(48);

  @$pb.TagNumber(49)
  $core.double get sellBalance => $_getN(48);
  @$pb.TagNumber(49)
  set sellBalance($core.double v) { $_setDouble(48, v); }
  @$pb.TagNumber(49)
  $core.bool hasSellBalance() => $_has(48);
  @$pb.TagNumber(49)
  void clearSellBalance() => clearField(49);

  @$pb.TagNumber(50)
  $fixnum.Int64 get onlineServiceTypeid => $_getI64(49);
  @$pb.TagNumber(50)
  set onlineServiceTypeid($fixnum.Int64 v) { $_setInt64(49, v); }
  @$pb.TagNumber(50)
  $core.bool hasOnlineServiceTypeid() => $_has(49);
  @$pb.TagNumber(50)
  void clearOnlineServiceTypeid() => clearField(50);

  @$pb.TagNumber(51)
  $fixnum.Int64 get modeServiceId => $_getI64(50);
  @$pb.TagNumber(51)
  set modeServiceId($fixnum.Int64 v) { $_setInt64(50, v); }
  @$pb.TagNumber(51)
  $core.bool hasModeServiceId() => $_has(50);
  @$pb.TagNumber(51)
  void clearModeServiceId() => clearField(51);

  @$pb.TagNumber(52)
  $fixnum.Int64 get sellPlace => $_getI64(51);
  @$pb.TagNumber(52)
  set sellPlace($fixnum.Int64 v) { $_setInt64(51, v); }
  @$pb.TagNumber(52)
  $core.bool hasSellPlace() => $_has(51);
  @$pb.TagNumber(52)
  void clearSellPlace() => clearField(52);

  @$pb.TagNumber(53)
  $core.double get sellerCommissionSale => $_getN(52);
  @$pb.TagNumber(53)
  set sellerCommissionSale($core.double v) { $_setDouble(52, v); }
  @$pb.TagNumber(53)
  $core.bool hasSellerCommissionSale() => $_has(52);
  @$pb.TagNumber(53)
  void clearSellerCommissionSale() => clearField(53);

  @$pb.TagNumber(54)
  $core.double get taxApplied => $_getN(53);
  @$pb.TagNumber(54)
  set taxApplied($core.double v) { $_setDouble(53, v); }
  @$pb.TagNumber(54)
  $core.bool hasTaxApplied() => $_has(53);
  @$pb.TagNumber(54)
  void clearTaxApplied() => clearField(54);

  @$pb.TagNumber(55)
  $core.double get taxUnitApplied => $_getN(54);
  @$pb.TagNumber(55)
  set taxUnitApplied($core.double v) { $_setDouble(54, v); }
  @$pb.TagNumber(55)
  $core.bool hasTaxUnitApplied() => $_has(54);
  @$pb.TagNumber(55)
  void clearTaxUnitApplied() => clearField(55);

  @$pb.TagNumber(56)
  $core.bool get isTransfer => $_getBF(55);
  @$pb.TagNumber(56)
  set isTransfer($core.bool v) { $_setBool(55, v); }
  @$pb.TagNumber(56)
  $core.bool hasIsTransfer() => $_has(55);
  @$pb.TagNumber(56)
  void clearIsTransfer() => clearField(56);

  @$pb.TagNumber(57)
  $fixnum.Int64 get storageDestinationId => $_getI64(56);
  @$pb.TagNumber(57)
  set storageDestinationId($fixnum.Int64 v) { $_setInt64(56, v); }
  @$pb.TagNumber(57)
  $core.bool hasStorageDestinationId() => $_has(56);
  @$pb.TagNumber(57)
  void clearStorageDestinationId() => clearField(57);

  @$pb.TagNumber(58)
  $core.bool get isCreditSumulation => $_getBF(57);
  @$pb.TagNumber(58)
  set isCreditSumulation($core.bool v) { $_setBool(57, v); }
  @$pb.TagNumber(58)
  $core.bool hasIsCreditSumulation() => $_has(57);
  @$pb.TagNumber(58)
  void clearIsCreditSumulation() => clearField(58);

  @$pb.TagNumber(59)
  $core.double get cash => $_getN(58);
  @$pb.TagNumber(59)
  set cash($core.double v) { $_setDouble(58, v); }
  @$pb.TagNumber(59)
  $core.bool hasCash() => $_has(58);
  @$pb.TagNumber(59)
  void clearCash() => clearField(59);

  @$pb.TagNumber(60)
  $core.double get changeCash => $_getN(59);
  @$pb.TagNumber(60)
  set changeCash($core.double v) { $_setDouble(59, v); }
  @$pb.TagNumber(60)
  $core.bool hasChangeCash() => $_has(59);
  @$pb.TagNumber(60)
  void clearChangeCash() => clearField(60);

  @$pb.TagNumber(61)
  $core.String get periodImportDate => $_getSZ(60);
  @$pb.TagNumber(61)
  set periodImportDate($core.String v) { $_setString(60, v); }
  @$pb.TagNumber(61)
  $core.bool hasPeriodImportDate() => $_has(60);
  @$pb.TagNumber(61)
  void clearPeriodImportDate() => clearField(61);

  @$pb.TagNumber(62)
  $core.String get note => $_getSZ(61);
  @$pb.TagNumber(62)
  set note($core.String v) { $_setString(61, v); }
  @$pb.TagNumber(62)
  $core.bool hasNote() => $_has(61);
  @$pb.TagNumber(62)
  void clearNote() => clearField(62);

  @$pb.TagNumber(63)
  $core.String get json => $_getSZ(62);
  @$pb.TagNumber(63)
  set json($core.String v) { $_setString(62, v); }
  @$pb.TagNumber(63)
  $core.bool hasJson() => $_has(62);
  @$pb.TagNumber(63)
  void clearJson() => clearField(63);

  @$pb.TagNumber(64)
  $core.double get freeAmount => $_getN(63);
  @$pb.TagNumber(64)
  set freeAmount($core.double v) { $_setDouble(63, v); }
  @$pb.TagNumber(64)
  $core.bool hasFreeAmount() => $_has(63);
  @$pb.TagNumber(64)
  void clearFreeAmount() => clearField(64);

  @$pb.TagNumber(65)
  $core.double get salesTax => $_getN(64);
  @$pb.TagNumber(65)
  set salesTax($core.double v) { $_setDouble(64, v); }
  @$pb.TagNumber(65)
  $core.bool hasSalesTax() => $_has(64);
  @$pb.TagNumber(65)
  void clearSalesTax() => clearField(65);

  @$pb.TagNumber(66)
  $core.String get clientPhone => $_getSZ(65);
  @$pb.TagNumber(66)
  set clientPhone($core.String v) { $_setString(65, v); }
  @$pb.TagNumber(66)
  $core.bool hasClientPhone() => $_has(65);
  @$pb.TagNumber(66)
  void clearClientPhone() => clearField(66);

  @$pb.TagNumber(67)
  $fixnum.Int64 get dateId => $_getI64(66);
  @$pb.TagNumber(67)
  set dateId($fixnum.Int64 v) { $_setInt64(66, v); }
  @$pb.TagNumber(67)
  $core.bool hasDateId() => $_has(66);
  @$pb.TagNumber(67)
  void clearDateId() => clearField(67);

  @$pb.TagNumber(68)
  $core.String get plate => $_getSZ(67);
  @$pb.TagNumber(68)
  set plate($core.String v) { $_setString(67, v); }
  @$pb.TagNumber(68)
  $core.bool hasPlate() => $_has(67);
  @$pb.TagNumber(68)
  void clearPlate() => clearField(68);

  @$pb.TagNumber(69)
  $core.int get paymentConditionRestaurant => $_getIZ(68);
  @$pb.TagNumber(69)
  set paymentConditionRestaurant($core.int v) { $_setSignedInt32(68, v); }
  @$pb.TagNumber(69)
  $core.bool hasPaymentConditionRestaurant() => $_has(68);
  @$pb.TagNumber(69)
  void clearPaymentConditionRestaurant() => clearField(69);

  @$pb.TagNumber(70)
  $core.int get vehicleType => $_getIZ(69);
  @$pb.TagNumber(70)
  set vehicleType($core.int v) { $_setSignedInt32(69, v); }
  @$pb.TagNumber(70)
  $core.bool hasVehicleType() => $_has(69);
  @$pb.TagNumber(70)
  void clearVehicleType() => clearField(70);

  @$pb.TagNumber(71)
  $core.int get counterType => $_getIZ(70);
  @$pb.TagNumber(71)
  set counterType($core.int v) { $_setSignedInt32(70, v); }
  @$pb.TagNumber(71)
  $core.bool hasCounterType() => $_has(70);
  @$pb.TagNumber(71)
  void clearCounterType() => clearField(71);

  @$pb.TagNumber(72)
  $core.String get restaurantChannel => $_getSZ(71);
  @$pb.TagNumber(72)
  set restaurantChannel($core.String v) { $_setString(71, v); }
  @$pb.TagNumber(72)
  $core.bool hasRestaurantChannel() => $_has(71);
  @$pb.TagNumber(72)
  void clearRestaurantChannel() => clearField(72);

  @$pb.TagNumber(73)
  $core.String get restaurantWaiter => $_getSZ(72);
  @$pb.TagNumber(73)
  set restaurantWaiter($core.String v) { $_setString(72, v); }
  @$pb.TagNumber(73)
  $core.bool hasRestaurantWaiter() => $_has(72);
  @$pb.TagNumber(73)
  void clearRestaurantWaiter() => clearField(73);

  @$pb.TagNumber(74)
  $core.String get cardDetail => $_getSZ(73);
  @$pb.TagNumber(74)
  set cardDetail($core.String v) { $_setString(73, v); }
  @$pb.TagNumber(74)
  $core.bool hasCardDetail() => $_has(73);
  @$pb.TagNumber(74)
  void clearCardDetail() => clearField(74);

  @$pb.TagNumber(75)
  $core.List<QuotationDetail> get items => $_getList(74);
}

class QuotationDetail extends $pb.GeneratedMessage {
  factory QuotationDetail({
    $fixnum.Int64? quotationId,
    $fixnum.Int64? productId,
    $core.int? itemId,
    $core.String? unitOfMeasure,
    $core.double? count,
    $core.String? name,
    $core.String? observations,
    $core.String? delivery,
    $core.String? effectTypeCode,
    $core.double? unitValue,
    $core.double? unitTax,
    $core.double? unitPrice,
    $core.double? unitPriceO,
    $core.double? discount,
    $core.double? rounding,
    $core.double? sellAmount,
    $core.double? tax,
    $core.double? total,
    $core.int? taxAppliedId,
    $core.int? effectTypeId,
    $core.int? editableId,
    $core.double? weight,
    $core.double? discountTaxt,
    $core.double? dicountPercent,
    $fixnum.Int64? stockId,
    $core.String? lot,
    $fixnum.Int64? quotationDadId,
    $fixnum.Int64? quotationDadItemId,
    $core.double? unitDiscount,
    $core.String? clientCode,
    $core.double? boxCount,
    $core.double? itemPercentCommission,
    $core.double? itemCommission,
    $fixnum.Int64? sellContractDetail,
    $core.bool? isBoxSell,
    $core.double? salesTax,
  }) {
    final $result = create();
    if (quotationId != null) {
      $result.quotationId = quotationId;
    }
    if (productId != null) {
      $result.productId = productId;
    }
    if (itemId != null) {
      $result.itemId = itemId;
    }
    if (unitOfMeasure != null) {
      $result.unitOfMeasure = unitOfMeasure;
    }
    if (count != null) {
      $result.count = count;
    }
    if (name != null) {
      $result.name = name;
    }
    if (observations != null) {
      $result.observations = observations;
    }
    if (delivery != null) {
      $result.delivery = delivery;
    }
    if (effectTypeCode != null) {
      $result.effectTypeCode = effectTypeCode;
    }
    if (unitValue != null) {
      $result.unitValue = unitValue;
    }
    if (unitTax != null) {
      $result.unitTax = unitTax;
    }
    if (unitPrice != null) {
      $result.unitPrice = unitPrice;
    }
    if (unitPriceO != null) {
      $result.unitPriceO = unitPriceO;
    }
    if (discount != null) {
      $result.discount = discount;
    }
    if (rounding != null) {
      $result.rounding = rounding;
    }
    if (sellAmount != null) {
      $result.sellAmount = sellAmount;
    }
    if (tax != null) {
      $result.tax = tax;
    }
    if (total != null) {
      $result.total = total;
    }
    if (taxAppliedId != null) {
      $result.taxAppliedId = taxAppliedId;
    }
    if (effectTypeId != null) {
      $result.effectTypeId = effectTypeId;
    }
    if (editableId != null) {
      $result.editableId = editableId;
    }
    if (weight != null) {
      $result.weight = weight;
    }
    if (discountTaxt != null) {
      $result.discountTaxt = discountTaxt;
    }
    if (dicountPercent != null) {
      $result.dicountPercent = dicountPercent;
    }
    if (stockId != null) {
      $result.stockId = stockId;
    }
    if (lot != null) {
      $result.lot = lot;
    }
    if (quotationDadId != null) {
      $result.quotationDadId = quotationDadId;
    }
    if (quotationDadItemId != null) {
      $result.quotationDadItemId = quotationDadItemId;
    }
    if (unitDiscount != null) {
      $result.unitDiscount = unitDiscount;
    }
    if (clientCode != null) {
      $result.clientCode = clientCode;
    }
    if (boxCount != null) {
      $result.boxCount = boxCount;
    }
    if (itemPercentCommission != null) {
      $result.itemPercentCommission = itemPercentCommission;
    }
    if (itemCommission != null) {
      $result.itemCommission = itemCommission;
    }
    if (sellContractDetail != null) {
      $result.sellContractDetail = sellContractDetail;
    }
    if (isBoxSell != null) {
      $result.isBoxSell = isBoxSell;
    }
    if (salesTax != null) {
      $result.salesTax = salesTax;
    }
    return $result;
  }
  QuotationDetail._() : super();
  factory QuotationDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuotationDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuotationDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'quotation'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'quotationId', protoName: 'quotationId')
    ..aInt64(2, _omitFieldNames ? '' : 'productId', protoName: 'productId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'itemId', $pb.PbFieldType.O3, protoName: 'itemId')
    ..aOS(4, _omitFieldNames ? '' : 'unitOfMeasure', protoName: 'unitOfMeasure')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OD)
    ..aOS(6, _omitFieldNames ? '' : 'name')
    ..aOS(7, _omitFieldNames ? '' : 'observations')
    ..aOS(8, _omitFieldNames ? '' : 'delivery')
    ..aOS(9, _omitFieldNames ? '' : 'effectTypeCode', protoName: 'effectTypeCode')
    ..a<$core.double>(10, _omitFieldNames ? '' : 'unitValue', $pb.PbFieldType.OD, protoName: 'unitValue')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'unitTax', $pb.PbFieldType.OD, protoName: 'unitTax')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'unitPrice', $pb.PbFieldType.OD, protoName: 'unitPrice')
    ..a<$core.double>(13, _omitFieldNames ? '' : 'unitPriceO', $pb.PbFieldType.OD, protoName: 'unitPriceO')
    ..a<$core.double>(14, _omitFieldNames ? '' : 'discount', $pb.PbFieldType.OD)
    ..a<$core.double>(15, _omitFieldNames ? '' : 'rounding', $pb.PbFieldType.OD)
    ..a<$core.double>(16, _omitFieldNames ? '' : 'sellAmount', $pb.PbFieldType.OD, protoName: 'sellAmount')
    ..a<$core.double>(17, _omitFieldNames ? '' : 'tax', $pb.PbFieldType.OD)
    ..a<$core.double>(18, _omitFieldNames ? '' : 'total', $pb.PbFieldType.OD)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'taxAppliedId', $pb.PbFieldType.O3, protoName: 'taxAppliedId')
    ..a<$core.int>(20, _omitFieldNames ? '' : 'effectTypeId', $pb.PbFieldType.O3, protoName: 'effectTypeId')
    ..a<$core.int>(21, _omitFieldNames ? '' : 'editableId', $pb.PbFieldType.O3, protoName: 'editableId')
    ..a<$core.double>(22, _omitFieldNames ? '' : 'weight', $pb.PbFieldType.OD)
    ..a<$core.double>(23, _omitFieldNames ? '' : 'discountTaxt', $pb.PbFieldType.OD, protoName: 'discountTaxt')
    ..a<$core.double>(24, _omitFieldNames ? '' : 'dicountPercent', $pb.PbFieldType.OD, protoName: 'dicountPercent')
    ..aInt64(25, _omitFieldNames ? '' : 'stockId', protoName: 'stockId')
    ..aOS(26, _omitFieldNames ? '' : 'lot')
    ..aInt64(27, _omitFieldNames ? '' : 'quotationDadId', protoName: 'quotationDadId')
    ..aInt64(28, _omitFieldNames ? '' : 'quotationDadItemId', protoName: 'quotationDadItemId')
    ..a<$core.double>(29, _omitFieldNames ? '' : 'unitDiscount', $pb.PbFieldType.OD, protoName: 'unitDiscount')
    ..aOS(30, _omitFieldNames ? '' : 'clientCode', protoName: 'clientCode')
    ..a<$core.double>(31, _omitFieldNames ? '' : 'boxCount', $pb.PbFieldType.OD, protoName: 'boxCount')
    ..a<$core.double>(32, _omitFieldNames ? '' : 'itemPercentCommission', $pb.PbFieldType.OD, protoName: 'itemPercentCommission')
    ..a<$core.double>(33, _omitFieldNames ? '' : 'itemCommission', $pb.PbFieldType.OD, protoName: 'itemCommission')
    ..aInt64(34, _omitFieldNames ? '' : 'sellContractDetail', protoName: 'sellContractDetail')
    ..aOB(35, _omitFieldNames ? '' : 'isBoxSell', protoName: 'isBoxSell')
    ..a<$core.double>(36, _omitFieldNames ? '' : 'salesTax', $pb.PbFieldType.OD, protoName: 'salesTax')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuotationDetail clone() => QuotationDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuotationDetail copyWith(void Function(QuotationDetail) updates) => super.copyWith((message) => updates(message as QuotationDetail)) as QuotationDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuotationDetail create() => QuotationDetail._();
  QuotationDetail createEmptyInstance() => create();
  static $pb.PbList<QuotationDetail> createRepeated() => $pb.PbList<QuotationDetail>();
  @$core.pragma('dart2js:noInline')
  static QuotationDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuotationDetail>(create);
  static QuotationDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get quotationId => $_getI64(0);
  @$pb.TagNumber(1)
  set quotationId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuotationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuotationId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get productId => $_getI64(1);
  @$pb.TagNumber(2)
  set productId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProductId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemId => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get unitOfMeasure => $_getSZ(3);
  @$pb.TagNumber(4)
  set unitOfMeasure($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnitOfMeasure() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnitOfMeasure() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get count => $_getN(4);
  @$pb.TagNumber(5)
  set count($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get observations => $_getSZ(6);
  @$pb.TagNumber(7)
  set observations($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasObservations() => $_has(6);
  @$pb.TagNumber(7)
  void clearObservations() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get delivery => $_getSZ(7);
  @$pb.TagNumber(8)
  set delivery($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDelivery() => $_has(7);
  @$pb.TagNumber(8)
  void clearDelivery() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get effectTypeCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set effectTypeCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEffectTypeCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearEffectTypeCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get unitValue => $_getN(9);
  @$pb.TagNumber(10)
  set unitValue($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUnitValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearUnitValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get unitTax => $_getN(10);
  @$pb.TagNumber(11)
  set unitTax($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUnitTax() => $_has(10);
  @$pb.TagNumber(11)
  void clearUnitTax() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get unitPrice => $_getN(11);
  @$pb.TagNumber(12)
  set unitPrice($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUnitPrice() => $_has(11);
  @$pb.TagNumber(12)
  void clearUnitPrice() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get unitPriceO => $_getN(12);
  @$pb.TagNumber(13)
  set unitPriceO($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUnitPriceO() => $_has(12);
  @$pb.TagNumber(13)
  void clearUnitPriceO() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get discount => $_getN(13);
  @$pb.TagNumber(14)
  set discount($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDiscount() => $_has(13);
  @$pb.TagNumber(14)
  void clearDiscount() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get rounding => $_getN(14);
  @$pb.TagNumber(15)
  set rounding($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasRounding() => $_has(14);
  @$pb.TagNumber(15)
  void clearRounding() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get sellAmount => $_getN(15);
  @$pb.TagNumber(16)
  set sellAmount($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSellAmount() => $_has(15);
  @$pb.TagNumber(16)
  void clearSellAmount() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get tax => $_getN(16);
  @$pb.TagNumber(17)
  set tax($core.double v) { $_setDouble(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasTax() => $_has(16);
  @$pb.TagNumber(17)
  void clearTax() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get total => $_getN(17);
  @$pb.TagNumber(18)
  set total($core.double v) { $_setDouble(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasTotal() => $_has(17);
  @$pb.TagNumber(18)
  void clearTotal() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get taxAppliedId => $_getIZ(18);
  @$pb.TagNumber(19)
  set taxAppliedId($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasTaxAppliedId() => $_has(18);
  @$pb.TagNumber(19)
  void clearTaxAppliedId() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get effectTypeId => $_getIZ(19);
  @$pb.TagNumber(20)
  set effectTypeId($core.int v) { $_setSignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasEffectTypeId() => $_has(19);
  @$pb.TagNumber(20)
  void clearEffectTypeId() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get editableId => $_getIZ(20);
  @$pb.TagNumber(21)
  set editableId($core.int v) { $_setSignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasEditableId() => $_has(20);
  @$pb.TagNumber(21)
  void clearEditableId() => clearField(21);

  @$pb.TagNumber(22)
  $core.double get weight => $_getN(21);
  @$pb.TagNumber(22)
  set weight($core.double v) { $_setDouble(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasWeight() => $_has(21);
  @$pb.TagNumber(22)
  void clearWeight() => clearField(22);

  @$pb.TagNumber(23)
  $core.double get discountTaxt => $_getN(22);
  @$pb.TagNumber(23)
  set discountTaxt($core.double v) { $_setDouble(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasDiscountTaxt() => $_has(22);
  @$pb.TagNumber(23)
  void clearDiscountTaxt() => clearField(23);

  @$pb.TagNumber(24)
  $core.double get dicountPercent => $_getN(23);
  @$pb.TagNumber(24)
  set dicountPercent($core.double v) { $_setDouble(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasDicountPercent() => $_has(23);
  @$pb.TagNumber(24)
  void clearDicountPercent() => clearField(24);

  @$pb.TagNumber(25)
  $fixnum.Int64 get stockId => $_getI64(24);
  @$pb.TagNumber(25)
  set stockId($fixnum.Int64 v) { $_setInt64(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasStockId() => $_has(24);
  @$pb.TagNumber(25)
  void clearStockId() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get lot => $_getSZ(25);
  @$pb.TagNumber(26)
  set lot($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasLot() => $_has(25);
  @$pb.TagNumber(26)
  void clearLot() => clearField(26);

  @$pb.TagNumber(27)
  $fixnum.Int64 get quotationDadId => $_getI64(26);
  @$pb.TagNumber(27)
  set quotationDadId($fixnum.Int64 v) { $_setInt64(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasQuotationDadId() => $_has(26);
  @$pb.TagNumber(27)
  void clearQuotationDadId() => clearField(27);

  @$pb.TagNumber(28)
  $fixnum.Int64 get quotationDadItemId => $_getI64(27);
  @$pb.TagNumber(28)
  set quotationDadItemId($fixnum.Int64 v) { $_setInt64(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasQuotationDadItemId() => $_has(27);
  @$pb.TagNumber(28)
  void clearQuotationDadItemId() => clearField(28);

  @$pb.TagNumber(29)
  $core.double get unitDiscount => $_getN(28);
  @$pb.TagNumber(29)
  set unitDiscount($core.double v) { $_setDouble(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasUnitDiscount() => $_has(28);
  @$pb.TagNumber(29)
  void clearUnitDiscount() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get clientCode => $_getSZ(29);
  @$pb.TagNumber(30)
  set clientCode($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasClientCode() => $_has(29);
  @$pb.TagNumber(30)
  void clearClientCode() => clearField(30);

  @$pb.TagNumber(31)
  $core.double get boxCount => $_getN(30);
  @$pb.TagNumber(31)
  set boxCount($core.double v) { $_setDouble(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasBoxCount() => $_has(30);
  @$pb.TagNumber(31)
  void clearBoxCount() => clearField(31);

  @$pb.TagNumber(32)
  $core.double get itemPercentCommission => $_getN(31);
  @$pb.TagNumber(32)
  set itemPercentCommission($core.double v) { $_setDouble(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasItemPercentCommission() => $_has(31);
  @$pb.TagNumber(32)
  void clearItemPercentCommission() => clearField(32);

  @$pb.TagNumber(33)
  $core.double get itemCommission => $_getN(32);
  @$pb.TagNumber(33)
  set itemCommission($core.double v) { $_setDouble(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasItemCommission() => $_has(32);
  @$pb.TagNumber(33)
  void clearItemCommission() => clearField(33);

  @$pb.TagNumber(34)
  $fixnum.Int64 get sellContractDetail => $_getI64(33);
  @$pb.TagNumber(34)
  set sellContractDetail($fixnum.Int64 v) { $_setInt64(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasSellContractDetail() => $_has(33);
  @$pb.TagNumber(34)
  void clearSellContractDetail() => clearField(34);

  @$pb.TagNumber(35)
  $core.bool get isBoxSell => $_getBF(34);
  @$pb.TagNumber(35)
  set isBoxSell($core.bool v) { $_setBool(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasIsBoxSell() => $_has(34);
  @$pb.TagNumber(35)
  void clearIsBoxSell() => clearField(35);

  @$pb.TagNumber(36)
  $core.double get salesTax => $_getN(35);
  @$pb.TagNumber(36)
  set salesTax($core.double v) { $_setDouble(35, v); }
  @$pb.TagNumber(36)
  $core.bool hasSalesTax() => $_has(35);
  @$pb.TagNumber(36)
  void clearSalesTax() => clearField(36);
}

class QuotationResponse extends $pb.GeneratedMessage {
  factory QuotationResponse({
    $fixnum.Int64? quotationId,
    $fixnum.Int64? number,
  }) {
    final $result = create();
    if (quotationId != null) {
      $result.quotationId = quotationId;
    }
    if (number != null) {
      $result.number = number;
    }
    return $result;
  }
  QuotationResponse._() : super();
  factory QuotationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuotationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuotationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'quotation'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'quotationId', protoName: 'quotationId')
    ..aInt64(2, _omitFieldNames ? '' : 'number')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuotationResponse clone() => QuotationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuotationResponse copyWith(void Function(QuotationResponse) updates) => super.copyWith((message) => updates(message as QuotationResponse)) as QuotationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuotationResponse create() => QuotationResponse._();
  QuotationResponse createEmptyInstance() => create();
  static $pb.PbList<QuotationResponse> createRepeated() => $pb.PbList<QuotationResponse>();
  @$core.pragma('dart2js:noInline')
  static QuotationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuotationResponse>(create);
  static QuotationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get quotationId => $_getI64(0);
  @$pb.TagNumber(1)
  set quotationId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuotationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuotationId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get number => $_getI64(1);
  @$pb.TagNumber(2)
  set number($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
}

enum OneOfQuotationResponse_Response {
  error, 
  quotationResponse, 
  notSet
}

class OneOfQuotationResponse extends $pb.GeneratedMessage {
  factory OneOfQuotationResponse({
    $1.Error? error,
    QuotationResponse? quotationResponse,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (quotationResponse != null) {
      $result.quotationResponse = quotationResponse;
    }
    return $result;
  }
  OneOfQuotationResponse._() : super();
  factory OneOfQuotationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OneOfQuotationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, OneOfQuotationResponse_Response> _OneOfQuotationResponse_ResponseByTag = {
    1 : OneOfQuotationResponse_Response.error,
    2 : OneOfQuotationResponse_Response.quotationResponse,
    0 : OneOfQuotationResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OneOfQuotationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'quotation'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.Error>(1, _omitFieldNames ? '' : 'error', subBuilder: $1.Error.create)
    ..aOM<QuotationResponse>(2, _omitFieldNames ? '' : 'quotationResponse', protoName: 'quotationResponse', subBuilder: QuotationResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OneOfQuotationResponse clone() => OneOfQuotationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OneOfQuotationResponse copyWith(void Function(OneOfQuotationResponse) updates) => super.copyWith((message) => updates(message as OneOfQuotationResponse)) as OneOfQuotationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneOfQuotationResponse create() => OneOfQuotationResponse._();
  OneOfQuotationResponse createEmptyInstance() => create();
  static $pb.PbList<OneOfQuotationResponse> createRepeated() => $pb.PbList<OneOfQuotationResponse>();
  @$core.pragma('dart2js:noInline')
  static OneOfQuotationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OneOfQuotationResponse>(create);
  static OneOfQuotationResponse? _defaultInstance;

  OneOfQuotationResponse_Response whichResponse() => _OneOfQuotationResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($1.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $1.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  QuotationResponse get quotationResponse => $_getN(1);
  @$pb.TagNumber(2)
  set quotationResponse(QuotationResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuotationResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuotationResponse() => clearField(2);
  @$pb.TagNumber(2)
  QuotationResponse ensureQuotationResponse() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
