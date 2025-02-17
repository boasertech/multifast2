//
//  Generated code. Do not modify.
//  source: qproducts.proto
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

class QProductRequest extends $pb.GeneratedMessage {
  factory QProductRequest({
    $core.String? companyRuc,
    $core.int? filterType,
    $core.int? type,
    $core.int? branchId,
    $fixnum.Int64? storageId,
  }) {
    final $result = create();
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    if (filterType != null) {
      $result.filterType = filterType;
    }
    if (type != null) {
      $result.type = type;
    }
    if (branchId != null) {
      $result.branchId = branchId;
    }
    if (storageId != null) {
      $result.storageId = storageId;
    }
    return $result;
  }
  QProductRequest._() : super();
  factory QProductRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QProductRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QProductRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qproducts'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'filterType', $pb.PbFieldType.O3, protoName: 'filterType')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'branchId', $pb.PbFieldType.O3, protoName: 'branchId')
    ..aInt64(5, _omitFieldNames ? '' : 'storageId', protoName: 'storageId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QProductRequest clone() => QProductRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QProductRequest copyWith(void Function(QProductRequest) updates) => super.copyWith((message) => updates(message as QProductRequest)) as QProductRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QProductRequest create() => QProductRequest._();
  QProductRequest createEmptyInstance() => create();
  static $pb.PbList<QProductRequest> createRepeated() => $pb.PbList<QProductRequest>();
  @$core.pragma('dart2js:noInline')
  static QProductRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QProductRequest>(create);
  static QProductRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get companyRuc => $_getSZ(0);
  @$pb.TagNumber(1)
  set companyRuc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompanyRuc() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompanyRuc() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get filterType => $_getIZ(1);
  @$pb.TagNumber(2)
  set filterType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilterType() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilterType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get branchId => $_getIZ(3);
  @$pb.TagNumber(4)
  set branchId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBranchId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBranchId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get storageId => $_getI64(4);
  @$pb.TagNumber(5)
  set storageId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStorageId() => $_has(4);
  @$pb.TagNumber(5)
  void clearStorageId() => clearField(5);
}

class QProduct extends $pb.GeneratedMessage {
  factory QProduct({
    $fixnum.Int64? productId,
    $core.String? barCodeOrName,
    $core.double? unitPrice,
    $core.double? taxAmount,
    $core.double? totalPrice,
    $core.bool? isFormulations,
    $core.String? unitOfMeasure,
    $core.int? typeEffect,
    $core.double? buyPrice,
    $core.String? sunatCode,
    $core.String? name,
    $core.String? clientCode,
    $core.bool? isTaxtEffect,
    $core.String? image,
    $core.String? barCode,
    $core.String? expirationDateLot,
    $core.String? curve,
    $core.String? category,
    $core.String? storagesJson,
  }) {
    final $result = create();
    if (productId != null) {
      $result.productId = productId;
    }
    if (barCodeOrName != null) {
      $result.barCodeOrName = barCodeOrName;
    }
    if (unitPrice != null) {
      $result.unitPrice = unitPrice;
    }
    if (taxAmount != null) {
      $result.taxAmount = taxAmount;
    }
    if (totalPrice != null) {
      $result.totalPrice = totalPrice;
    }
    if (isFormulations != null) {
      $result.isFormulations = isFormulations;
    }
    if (unitOfMeasure != null) {
      $result.unitOfMeasure = unitOfMeasure;
    }
    if (typeEffect != null) {
      $result.typeEffect = typeEffect;
    }
    if (buyPrice != null) {
      $result.buyPrice = buyPrice;
    }
    if (sunatCode != null) {
      $result.sunatCode = sunatCode;
    }
    if (name != null) {
      $result.name = name;
    }
    if (clientCode != null) {
      $result.clientCode = clientCode;
    }
    if (isTaxtEffect != null) {
      $result.isTaxtEffect = isTaxtEffect;
    }
    if (image != null) {
      $result.image = image;
    }
    if (barCode != null) {
      $result.barCode = barCode;
    }
    if (expirationDateLot != null) {
      $result.expirationDateLot = expirationDateLot;
    }
    if (curve != null) {
      $result.curve = curve;
    }
    if (category != null) {
      $result.category = category;
    }
    if (storagesJson != null) {
      $result.storagesJson = storagesJson;
    }
    return $result;
  }
  QProduct._() : super();
  factory QProduct.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QProduct.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QProduct', package: const $pb.PackageName(_omitMessageNames ? '' : 'qproducts'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'productId', protoName: 'productId')
    ..aOS(2, _omitFieldNames ? '' : 'barCodeOrName', protoName: 'barCodeOrName')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'unitPrice', $pb.PbFieldType.OD, protoName: 'unitPrice')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'taxAmount', $pb.PbFieldType.OD, protoName: 'taxAmount')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'totalPrice', $pb.PbFieldType.OD, protoName: 'totalPrice')
    ..aOB(6, _omitFieldNames ? '' : 'isFormulations', protoName: 'isFormulations')
    ..aOS(7, _omitFieldNames ? '' : 'unitOfMeasure', protoName: 'unitOfMeasure')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'typeEffect', $pb.PbFieldType.O3, protoName: 'typeEffect')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'buyPrice', $pb.PbFieldType.OD, protoName: 'buyPrice')
    ..aOS(10, _omitFieldNames ? '' : 'sunatCode', protoName: 'sunatCode')
    ..aOS(11, _omitFieldNames ? '' : 'name')
    ..aOS(12, _omitFieldNames ? '' : 'clientCode', protoName: 'clientCode')
    ..aOB(13, _omitFieldNames ? '' : 'isTaxtEffect', protoName: 'isTaxtEffect')
    ..aOS(14, _omitFieldNames ? '' : 'image')
    ..aOS(15, _omitFieldNames ? '' : 'barCode', protoName: 'barCode')
    ..aOS(16, _omitFieldNames ? '' : 'expirationDateLot', protoName: 'expirationDateLot')
    ..aOS(17, _omitFieldNames ? '' : 'curve')
    ..aOS(18, _omitFieldNames ? '' : 'category')
    ..aOS(19, _omitFieldNames ? '' : 'storagesJson', protoName: 'storagesJson')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QProduct clone() => QProduct()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QProduct copyWith(void Function(QProduct) updates) => super.copyWith((message) => updates(message as QProduct)) as QProduct;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QProduct create() => QProduct._();
  QProduct createEmptyInstance() => create();
  static $pb.PbList<QProduct> createRepeated() => $pb.PbList<QProduct>();
  @$core.pragma('dart2js:noInline')
  static QProduct getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QProduct>(create);
  static QProduct? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get productId => $_getI64(0);
  @$pb.TagNumber(1)
  set productId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get barCodeOrName => $_getSZ(1);
  @$pb.TagNumber(2)
  set barCodeOrName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBarCodeOrName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBarCodeOrName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get unitPrice => $_getN(2);
  @$pb.TagNumber(3)
  set unitPrice($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnitPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnitPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get taxAmount => $_getN(3);
  @$pb.TagNumber(4)
  set taxAmount($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTaxAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaxAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get totalPrice => $_getN(4);
  @$pb.TagNumber(5)
  set totalPrice($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isFormulations => $_getBF(5);
  @$pb.TagNumber(6)
  set isFormulations($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsFormulations() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsFormulations() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get unitOfMeasure => $_getSZ(6);
  @$pb.TagNumber(7)
  set unitOfMeasure($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUnitOfMeasure() => $_has(6);
  @$pb.TagNumber(7)
  void clearUnitOfMeasure() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get typeEffect => $_getIZ(7);
  @$pb.TagNumber(8)
  set typeEffect($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTypeEffect() => $_has(7);
  @$pb.TagNumber(8)
  void clearTypeEffect() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get buyPrice => $_getN(8);
  @$pb.TagNumber(9)
  set buyPrice($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBuyPrice() => $_has(8);
  @$pb.TagNumber(9)
  void clearBuyPrice() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get sunatCode => $_getSZ(9);
  @$pb.TagNumber(10)
  set sunatCode($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSunatCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearSunatCode() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get name => $_getSZ(10);
  @$pb.TagNumber(11)
  set name($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasName() => $_has(10);
  @$pb.TagNumber(11)
  void clearName() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get clientCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set clientCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasClientCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearClientCode() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get isTaxtEffect => $_getBF(12);
  @$pb.TagNumber(13)
  set isTaxtEffect($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIsTaxtEffect() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsTaxtEffect() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get image => $_getSZ(13);
  @$pb.TagNumber(14)
  set image($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasImage() => $_has(13);
  @$pb.TagNumber(14)
  void clearImage() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get barCode => $_getSZ(14);
  @$pb.TagNumber(15)
  set barCode($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasBarCode() => $_has(14);
  @$pb.TagNumber(15)
  void clearBarCode() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get expirationDateLot => $_getSZ(15);
  @$pb.TagNumber(16)
  set expirationDateLot($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasExpirationDateLot() => $_has(15);
  @$pb.TagNumber(16)
  void clearExpirationDateLot() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get curve => $_getSZ(16);
  @$pb.TagNumber(17)
  set curve($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasCurve() => $_has(16);
  @$pb.TagNumber(17)
  void clearCurve() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get category => $_getSZ(17);
  @$pb.TagNumber(18)
  set category($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasCategory() => $_has(17);
  @$pb.TagNumber(18)
  void clearCategory() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get storagesJson => $_getSZ(18);
  @$pb.TagNumber(19)
  set storagesJson($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasStoragesJson() => $_has(18);
  @$pb.TagNumber(19)
  void clearStoragesJson() => clearField(19);
}

class ListQProductsResponse extends $pb.GeneratedMessage {
  factory ListQProductsResponse({
    $core.Iterable<QProduct>? products,
  }) {
    final $result = create();
    if (products != null) {
      $result.products.addAll(products);
    }
    return $result;
  }
  ListQProductsResponse._() : super();
  factory ListQProductsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListQProductsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListQProductsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qproducts'), createEmptyInstance: create)
    ..pc<QProduct>(1, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM, subBuilder: QProduct.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListQProductsResponse clone() => ListQProductsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListQProductsResponse copyWith(void Function(ListQProductsResponse) updates) => super.copyWith((message) => updates(message as ListQProductsResponse)) as ListQProductsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListQProductsResponse create() => ListQProductsResponse._();
  ListQProductsResponse createEmptyInstance() => create();
  static $pb.PbList<ListQProductsResponse> createRepeated() => $pb.PbList<ListQProductsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListQProductsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListQProductsResponse>(create);
  static ListQProductsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<QProduct> get products => $_getList(0);
}

enum OneOfQProductsResponse_Response {
  listQProductsResponse, 
  error, 
  notSet
}

class OneOfQProductsResponse extends $pb.GeneratedMessage {
  factory OneOfQProductsResponse({
    ListQProductsResponse? listQProductsResponse,
    $1.Error? error,
  }) {
    final $result = create();
    if (listQProductsResponse != null) {
      $result.listQProductsResponse = listQProductsResponse;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  OneOfQProductsResponse._() : super();
  factory OneOfQProductsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OneOfQProductsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, OneOfQProductsResponse_Response> _OneOfQProductsResponse_ResponseByTag = {
    1 : OneOfQProductsResponse_Response.listQProductsResponse,
    2 : OneOfQProductsResponse_Response.error,
    0 : OneOfQProductsResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OneOfQProductsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qproducts'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ListQProductsResponse>(1, _omitFieldNames ? '' : 'listQProductsResponse', protoName: 'listQProductsResponse', subBuilder: ListQProductsResponse.create)
    ..aOM<$1.Error>(2, _omitFieldNames ? '' : 'error', subBuilder: $1.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OneOfQProductsResponse clone() => OneOfQProductsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OneOfQProductsResponse copyWith(void Function(OneOfQProductsResponse) updates) => super.copyWith((message) => updates(message as OneOfQProductsResponse)) as OneOfQProductsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneOfQProductsResponse create() => OneOfQProductsResponse._();
  OneOfQProductsResponse createEmptyInstance() => create();
  static $pb.PbList<OneOfQProductsResponse> createRepeated() => $pb.PbList<OneOfQProductsResponse>();
  @$core.pragma('dart2js:noInline')
  static OneOfQProductsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OneOfQProductsResponse>(create);
  static OneOfQProductsResponse? _defaultInstance;

  OneOfQProductsResponse_Response whichResponse() => _OneOfQProductsResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListQProductsResponse get listQProductsResponse => $_getN(0);
  @$pb.TagNumber(1)
  set listQProductsResponse(ListQProductsResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasListQProductsResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearListQProductsResponse() => clearField(1);
  @$pb.TagNumber(1)
  ListQProductsResponse ensureListQProductsResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($1.Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  $1.Error ensureError() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
