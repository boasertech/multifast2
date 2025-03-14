//
//  Generated code. Do not modify.
//  source: enterprise.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'category.pb.dart' as $3;
import 'client.pb.dart' as $0;
import 'error.pb.dart' as $4;
import 'storage.pb.dart' as $2;

class ValidityOffer extends $pb.GeneratedMessage {
  factory ValidityOffer({
    $core.int? validityOfferId,
    $core.String? name,
    $core.int? duration,
  }) {
    final $result = create();
    if (validityOfferId != null) {
      $result.validityOfferId = validityOfferId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (duration != null) {
      $result.duration = duration;
    }
    return $result;
  }
  ValidityOffer._() : super();
  factory ValidityOffer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidityOffer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidityOffer', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'validityOfferId', $pb.PbFieldType.O3, protoName: 'validityOfferId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'duration', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidityOffer clone() => ValidityOffer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidityOffer copyWith(void Function(ValidityOffer) updates) => super.copyWith((message) => updates(message as ValidityOffer)) as ValidityOffer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidityOffer create() => ValidityOffer._();
  ValidityOffer createEmptyInstance() => create();
  static $pb.PbList<ValidityOffer> createRepeated() => $pb.PbList<ValidityOffer>();
  @$core.pragma('dart2js:noInline')
  static ValidityOffer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidityOffer>(create);
  static ValidityOffer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get validityOfferId => $_getIZ(0);
  @$pb.TagNumber(1)
  set validityOfferId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValidityOfferId() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidityOfferId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get duration => $_getIZ(2);
  @$pb.TagNumber(3)
  set duration($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => clearField(3);
}

class PayCondition extends $pb.GeneratedMessage {
  factory PayCondition({
    $core.int? payConditionId,
    $core.String? name,
    $core.bool? isSunat,
  }) {
    final $result = create();
    if (payConditionId != null) {
      $result.payConditionId = payConditionId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (isSunat != null) {
      $result.isSunat = isSunat;
    }
    return $result;
  }
  PayCondition._() : super();
  factory PayCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'payConditionId', $pb.PbFieldType.O3, protoName: 'payConditionId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'isSunat', protoName: 'isSunat')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayCondition clone() => PayCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayCondition copyWith(void Function(PayCondition) updates) => super.copyWith((message) => updates(message as PayCondition)) as PayCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PayCondition create() => PayCondition._();
  PayCondition createEmptyInstance() => create();
  static $pb.PbList<PayCondition> createRepeated() => $pb.PbList<PayCondition>();
  @$core.pragma('dart2js:noInline')
  static PayCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayCondition>(create);
  static PayCondition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get payConditionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set payConditionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayConditionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayConditionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isSunat => $_getBF(2);
  @$pb.TagNumber(3)
  set isSunat($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsSunat() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsSunat() => clearField(3);
}

class VoucherType extends $pb.GeneratedMessage {
  factory VoucherType({
    $core.int? voucherTypeId,
    $core.String? code,
    $core.String? name,
    $core.bool? isDefault,
    $core.String? abbreviation,
    $core.bool? isDni,
  }) {
    final $result = create();
    if (voucherTypeId != null) {
      $result.voucherTypeId = voucherTypeId;
    }
    if (code != null) {
      $result.code = code;
    }
    if (name != null) {
      $result.name = name;
    }
    if (isDefault != null) {
      $result.isDefault = isDefault;
    }
    if (abbreviation != null) {
      $result.abbreviation = abbreviation;
    }
    if (isDni != null) {
      $result.isDni = isDni;
    }
    return $result;
  }
  VoucherType._() : super();
  factory VoucherType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VoucherType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VoucherType', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'voucherTypeId', $pb.PbFieldType.O3, protoName: 'voucherTypeId')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOB(4, _omitFieldNames ? '' : 'isDefault', protoName: 'isDefault')
    ..aOS(5, _omitFieldNames ? '' : 'abbreviation')
    ..aOB(6, _omitFieldNames ? '' : 'isDni', protoName: 'isDni')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VoucherType clone() => VoucherType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VoucherType copyWith(void Function(VoucherType) updates) => super.copyWith((message) => updates(message as VoucherType)) as VoucherType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoucherType create() => VoucherType._();
  VoucherType createEmptyInstance() => create();
  static $pb.PbList<VoucherType> createRepeated() => $pb.PbList<VoucherType>();
  @$core.pragma('dart2js:noInline')
  static VoucherType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoucherType>(create);
  static VoucherType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get voucherTypeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set voucherTypeId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVoucherTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoucherTypeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isDefault => $_getBF(3);
  @$pb.TagNumber(4)
  set isDefault($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsDefault() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsDefault() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get abbreviation => $_getSZ(4);
  @$pb.TagNumber(5)
  set abbreviation($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAbbreviation() => $_has(4);
  @$pb.TagNumber(5)
  void clearAbbreviation() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isDni => $_getBF(5);
  @$pb.TagNumber(6)
  set isDni($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsDni() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsDni() => clearField(6);
}

class Seller extends $pb.GeneratedMessage {
  factory Seller({
    $core.int? employeeId,
    $core.String? name,
    $core.double? saleCommissionPercentage,
  }) {
    final $result = create();
    if (employeeId != null) {
      $result.employeeId = employeeId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (saleCommissionPercentage != null) {
      $result.saleCommissionPercentage = saleCommissionPercentage;
    }
    return $result;
  }
  Seller._() : super();
  factory Seller.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Seller.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Seller', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'employeeId', $pb.PbFieldType.O3, protoName: 'employeeId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'saleCommissionPercentage', $pb.PbFieldType.OD, protoName: 'saleCommissionPercentage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Seller clone() => Seller()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Seller copyWith(void Function(Seller) updates) => super.copyWith((message) => updates(message as Seller)) as Seller;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Seller create() => Seller._();
  Seller createEmptyInstance() => create();
  static $pb.PbList<Seller> createRepeated() => $pb.PbList<Seller>();
  @$core.pragma('dart2js:noInline')
  static Seller getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Seller>(create);
  static Seller? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get employeeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set employeeId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmployeeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmployeeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get saleCommissionPercentage => $_getN(2);
  @$pb.TagNumber(3)
  set saleCommissionPercentage($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSaleCommissionPercentage() => $_has(2);
  @$pb.TagNumber(3)
  void clearSaleCommissionPercentage() => clearField(3);
}

class GlobalRequest extends $pb.GeneratedMessage {
  factory GlobalRequest({
    $core.bool? isGlobal,
  }) {
    final $result = create();
    if (isGlobal != null) {
      $result.isGlobal = isGlobal;
    }
    return $result;
  }
  GlobalRequest._() : super();
  factory GlobalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GlobalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GlobalRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isGlobal', protoName: 'isGlobal')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GlobalRequest clone() => GlobalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GlobalRequest copyWith(void Function(GlobalRequest) updates) => super.copyWith((message) => updates(message as GlobalRequest)) as GlobalRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlobalRequest create() => GlobalRequest._();
  GlobalRequest createEmptyInstance() => create();
  static $pb.PbList<GlobalRequest> createRepeated() => $pb.PbList<GlobalRequest>();
  @$core.pragma('dart2js:noInline')
  static GlobalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GlobalRequest>(create);
  static GlobalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isGlobal => $_getBF(0);
  @$pb.TagNumber(1)
  set isGlobal($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsGlobal() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsGlobal() => clearField(1);
}

class EnterpriseRequest extends $pb.GeneratedMessage {
  factory EnterpriseRequest({
    $core.String? companyRuc,
    $fixnum.Int64? branchId,
  }) {
    final $result = create();
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    if (branchId != null) {
      $result.branchId = branchId;
    }
    return $result;
  }
  EnterpriseRequest._() : super();
  factory EnterpriseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnterpriseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnterpriseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..aInt64(2, _omitFieldNames ? '' : 'branchId', protoName: 'branchId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnterpriseRequest clone() => EnterpriseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnterpriseRequest copyWith(void Function(EnterpriseRequest) updates) => super.copyWith((message) => updates(message as EnterpriseRequest)) as EnterpriseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnterpriseRequest create() => EnterpriseRequest._();
  EnterpriseRequest createEmptyInstance() => create();
  static $pb.PbList<EnterpriseRequest> createRepeated() => $pb.PbList<EnterpriseRequest>();
  @$core.pragma('dart2js:noInline')
  static EnterpriseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnterpriseRequest>(create);
  static EnterpriseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get companyRuc => $_getSZ(0);
  @$pb.TagNumber(1)
  set companyRuc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompanyRuc() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompanyRuc() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get branchId => $_getI64(1);
  @$pb.TagNumber(2)
  set branchId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBranchId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBranchId() => clearField(2);
}

class DocumentType extends $pb.GeneratedMessage {
  factory DocumentType({
    $fixnum.Int64? documentTypeId,
    $core.String? name,
  }) {
    final $result = create();
    if (documentTypeId != null) {
      $result.documentTypeId = documentTypeId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  DocumentType._() : super();
  factory DocumentType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentType', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'documentTypeId', protoName: 'documentTypeId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocumentType clone() => DocumentType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocumentType copyWith(void Function(DocumentType) updates) => super.copyWith((message) => updates(message as DocumentType)) as DocumentType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentType create() => DocumentType._();
  DocumentType createEmptyInstance() => create();
  static $pb.PbList<DocumentType> createRepeated() => $pb.PbList<DocumentType>();
  @$core.pragma('dart2js:noInline')
  static DocumentType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocumentType>(create);
  static DocumentType? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get documentTypeId => $_getI64(0);
  @$pb.TagNumber(1)
  set documentTypeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocumentTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentTypeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class ListDocumentTypeResponse extends $pb.GeneratedMessage {
  factory ListDocumentTypeResponse({
    $core.Iterable<DocumentType>? documentsType,
  }) {
    final $result = create();
    if (documentsType != null) {
      $result.documentsType.addAll(documentsType);
    }
    return $result;
  }
  ListDocumentTypeResponse._() : super();
  factory ListDocumentTypeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDocumentTypeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListDocumentTypeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..pc<DocumentType>(1, _omitFieldNames ? '' : 'documentsType', $pb.PbFieldType.PM, protoName: 'documentsType', subBuilder: DocumentType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDocumentTypeResponse clone() => ListDocumentTypeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDocumentTypeResponse copyWith(void Function(ListDocumentTypeResponse) updates) => super.copyWith((message) => updates(message as ListDocumentTypeResponse)) as ListDocumentTypeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDocumentTypeResponse create() => ListDocumentTypeResponse._();
  ListDocumentTypeResponse createEmptyInstance() => create();
  static $pb.PbList<ListDocumentTypeResponse> createRepeated() => $pb.PbList<ListDocumentTypeResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDocumentTypeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDocumentTypeResponse>(create);
  static ListDocumentTypeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DocumentType> get documentsType => $_getList(0);
}

class ListStorageResponse extends $pb.GeneratedMessage {
  factory ListStorageResponse({
    $core.Iterable<$2.Storage>? storages,
  }) {
    final $result = create();
    if (storages != null) {
      $result.storages.addAll(storages);
    }
    return $result;
  }
  ListStorageResponse._() : super();
  factory ListStorageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStorageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStorageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..pc<$2.Storage>(1, _omitFieldNames ? '' : 'storages', $pb.PbFieldType.PM, subBuilder: $2.Storage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStorageResponse clone() => ListStorageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStorageResponse copyWith(void Function(ListStorageResponse) updates) => super.copyWith((message) => updates(message as ListStorageResponse)) as ListStorageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStorageResponse create() => ListStorageResponse._();
  ListStorageResponse createEmptyInstance() => create();
  static $pb.PbList<ListStorageResponse> createRepeated() => $pb.PbList<ListStorageResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStorageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStorageResponse>(create);
  static ListStorageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.Storage> get storages => $_getList(0);
}

class ListCategoryResponse extends $pb.GeneratedMessage {
  factory ListCategoryResponse({
    $core.Iterable<$3.Category>? categories,
  }) {
    final $result = create();
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    return $result;
  }
  ListCategoryResponse._() : super();
  factory ListCategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListCategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCategoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..pc<$3.Category>(1, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM, subBuilder: $3.Category.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListCategoryResponse clone() => ListCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListCategoryResponse copyWith(void Function(ListCategoryResponse) updates) => super.copyWith((message) => updates(message as ListCategoryResponse)) as ListCategoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCategoryResponse create() => ListCategoryResponse._();
  ListCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<ListCategoryResponse> createRepeated() => $pb.PbList<ListCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static ListCategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCategoryResponse>(create);
  static ListCategoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.Category> get categories => $_getList(0);
}

class ListSubCategoryResponse extends $pb.GeneratedMessage {
  factory ListSubCategoryResponse({
    $core.Iterable<$3.SubCategory>? subCategories,
  }) {
    final $result = create();
    if (subCategories != null) {
      $result.subCategories.addAll(subCategories);
    }
    return $result;
  }
  ListSubCategoryResponse._() : super();
  factory ListSubCategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSubCategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSubCategoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..pc<$3.SubCategory>(1, _omitFieldNames ? '' : 'subCategories', $pb.PbFieldType.PM, protoName: 'subCategories', subBuilder: $3.SubCategory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSubCategoryResponse clone() => ListSubCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSubCategoryResponse copyWith(void Function(ListSubCategoryResponse) updates) => super.copyWith((message) => updates(message as ListSubCategoryResponse)) as ListSubCategoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSubCategoryResponse create() => ListSubCategoryResponse._();
  ListSubCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<ListSubCategoryResponse> createRepeated() => $pb.PbList<ListSubCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSubCategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSubCategoryResponse>(create);
  static ListSubCategoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.SubCategory> get subCategories => $_getList(0);
}

class ListValidityOfferResponse extends $pb.GeneratedMessage {
  factory ListValidityOfferResponse({
    $core.Iterable<ValidityOffer>? validityOffers,
  }) {
    final $result = create();
    if (validityOffers != null) {
      $result.validityOffers.addAll(validityOffers);
    }
    return $result;
  }
  ListValidityOfferResponse._() : super();
  factory ListValidityOfferResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListValidityOfferResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListValidityOfferResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..pc<ValidityOffer>(1, _omitFieldNames ? '' : 'validityOffers', $pb.PbFieldType.PM, protoName: 'validityOffers', subBuilder: ValidityOffer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListValidityOfferResponse clone() => ListValidityOfferResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListValidityOfferResponse copyWith(void Function(ListValidityOfferResponse) updates) => super.copyWith((message) => updates(message as ListValidityOfferResponse)) as ListValidityOfferResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListValidityOfferResponse create() => ListValidityOfferResponse._();
  ListValidityOfferResponse createEmptyInstance() => create();
  static $pb.PbList<ListValidityOfferResponse> createRepeated() => $pb.PbList<ListValidityOfferResponse>();
  @$core.pragma('dart2js:noInline')
  static ListValidityOfferResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListValidityOfferResponse>(create);
  static ListValidityOfferResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ValidityOffer> get validityOffers => $_getList(0);
}

class ListPayConditionResponse extends $pb.GeneratedMessage {
  factory ListPayConditionResponse({
    $core.Iterable<PayCondition>? payConditions,
  }) {
    final $result = create();
    if (payConditions != null) {
      $result.payConditions.addAll(payConditions);
    }
    return $result;
  }
  ListPayConditionResponse._() : super();
  factory ListPayConditionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPayConditionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPayConditionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..pc<PayCondition>(1, _omitFieldNames ? '' : 'payConditions', $pb.PbFieldType.PM, protoName: 'payConditions', subBuilder: PayCondition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPayConditionResponse clone() => ListPayConditionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPayConditionResponse copyWith(void Function(ListPayConditionResponse) updates) => super.copyWith((message) => updates(message as ListPayConditionResponse)) as ListPayConditionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPayConditionResponse create() => ListPayConditionResponse._();
  ListPayConditionResponse createEmptyInstance() => create();
  static $pb.PbList<ListPayConditionResponse> createRepeated() => $pb.PbList<ListPayConditionResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPayConditionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPayConditionResponse>(create);
  static ListPayConditionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PayCondition> get payConditions => $_getList(0);
}

class ListVoucherTypeResponse extends $pb.GeneratedMessage {
  factory ListVoucherTypeResponse({
    $core.Iterable<VoucherType>? vouchersType,
  }) {
    final $result = create();
    if (vouchersType != null) {
      $result.vouchersType.addAll(vouchersType);
    }
    return $result;
  }
  ListVoucherTypeResponse._() : super();
  factory ListVoucherTypeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListVoucherTypeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListVoucherTypeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..pc<VoucherType>(1, _omitFieldNames ? '' : 'vouchersType', $pb.PbFieldType.PM, protoName: 'vouchersType', subBuilder: VoucherType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListVoucherTypeResponse clone() => ListVoucherTypeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListVoucherTypeResponse copyWith(void Function(ListVoucherTypeResponse) updates) => super.copyWith((message) => updates(message as ListVoucherTypeResponse)) as ListVoucherTypeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListVoucherTypeResponse create() => ListVoucherTypeResponse._();
  ListVoucherTypeResponse createEmptyInstance() => create();
  static $pb.PbList<ListVoucherTypeResponse> createRepeated() => $pb.PbList<ListVoucherTypeResponse>();
  @$core.pragma('dart2js:noInline')
  static ListVoucherTypeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListVoucherTypeResponse>(create);
  static ListVoucherTypeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VoucherType> get vouchersType => $_getList(0);
}

class ListSellerResponse extends $pb.GeneratedMessage {
  factory ListSellerResponse({
    $core.Iterable<Seller>? sellers,
  }) {
    final $result = create();
    if (sellers != null) {
      $result.sellers.addAll(sellers);
    }
    return $result;
  }
  ListSellerResponse._() : super();
  factory ListSellerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSellerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSellerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..pc<Seller>(1, _omitFieldNames ? '' : 'sellers', $pb.PbFieldType.PM, subBuilder: Seller.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSellerResponse clone() => ListSellerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSellerResponse copyWith(void Function(ListSellerResponse) updates) => super.copyWith((message) => updates(message as ListSellerResponse)) as ListSellerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSellerResponse create() => ListSellerResponse._();
  ListSellerResponse createEmptyInstance() => create();
  static $pb.PbList<ListSellerResponse> createRepeated() => $pb.PbList<ListSellerResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSellerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSellerResponse>(create);
  static ListSellerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Seller> get sellers => $_getList(0);
}

class DataEnterpriseResponse extends $pb.GeneratedMessage {
  factory DataEnterpriseResponse({
    $4.Error? error,
    ListStorageResponse? listStorageResponse,
    ListCategoryResponse? listCategoryResponse,
    ListSubCategoryResponse? listSubCategoryResponse,
    ListValidityOfferResponse? listValidityOfferResponse,
    ListPayConditionResponse? listPayConditionResponse,
    ListVoucherTypeResponse? listVoucherTypeResponse,
    $0.DocumentResponse? defaultClientResponse,
    ListSellerResponse? listSellerResponse,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (listStorageResponse != null) {
      $result.listStorageResponse = listStorageResponse;
    }
    if (listCategoryResponse != null) {
      $result.listCategoryResponse = listCategoryResponse;
    }
    if (listSubCategoryResponse != null) {
      $result.listSubCategoryResponse = listSubCategoryResponse;
    }
    if (listValidityOfferResponse != null) {
      $result.listValidityOfferResponse = listValidityOfferResponse;
    }
    if (listPayConditionResponse != null) {
      $result.listPayConditionResponse = listPayConditionResponse;
    }
    if (listVoucherTypeResponse != null) {
      $result.listVoucherTypeResponse = listVoucherTypeResponse;
    }
    if (defaultClientResponse != null) {
      $result.defaultClientResponse = defaultClientResponse;
    }
    if (listSellerResponse != null) {
      $result.listSellerResponse = listSellerResponse;
    }
    return $result;
  }
  DataEnterpriseResponse._() : super();
  factory DataEnterpriseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataEnterpriseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataEnterpriseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'enterprise'), createEmptyInstance: create)
    ..aOM<$4.Error>(1, _omitFieldNames ? '' : 'error', subBuilder: $4.Error.create)
    ..aOM<ListStorageResponse>(2, _omitFieldNames ? '' : 'listStorageResponse', protoName: 'listStorageResponse', subBuilder: ListStorageResponse.create)
    ..aOM<ListCategoryResponse>(3, _omitFieldNames ? '' : 'listCategoryResponse', protoName: 'listCategoryResponse', subBuilder: ListCategoryResponse.create)
    ..aOM<ListSubCategoryResponse>(4, _omitFieldNames ? '' : 'listSubCategoryResponse', protoName: 'listSubCategoryResponse', subBuilder: ListSubCategoryResponse.create)
    ..aOM<ListValidityOfferResponse>(5, _omitFieldNames ? '' : 'listValidityOfferResponse', protoName: 'listValidityOfferResponse', subBuilder: ListValidityOfferResponse.create)
    ..aOM<ListPayConditionResponse>(6, _omitFieldNames ? '' : 'listPayConditionResponse', protoName: 'listPayConditionResponse', subBuilder: ListPayConditionResponse.create)
    ..aOM<ListVoucherTypeResponse>(7, _omitFieldNames ? '' : 'listVoucherTypeResponse', protoName: 'listVoucherTypeResponse', subBuilder: ListVoucherTypeResponse.create)
    ..aOM<$0.DocumentResponse>(8, _omitFieldNames ? '' : 'defaultClientResponse', protoName: 'defaultClientResponse', subBuilder: $0.DocumentResponse.create)
    ..aOM<ListSellerResponse>(9, _omitFieldNames ? '' : 'listSellerResponse', protoName: 'listSellerResponse', subBuilder: ListSellerResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataEnterpriseResponse clone() => DataEnterpriseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataEnterpriseResponse copyWith(void Function(DataEnterpriseResponse) updates) => super.copyWith((message) => updates(message as DataEnterpriseResponse)) as DataEnterpriseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataEnterpriseResponse create() => DataEnterpriseResponse._();
  DataEnterpriseResponse createEmptyInstance() => create();
  static $pb.PbList<DataEnterpriseResponse> createRepeated() => $pb.PbList<DataEnterpriseResponse>();
  @$core.pragma('dart2js:noInline')
  static DataEnterpriseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataEnterpriseResponse>(create);
  static DataEnterpriseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($4.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $4.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  ListStorageResponse get listStorageResponse => $_getN(1);
  @$pb.TagNumber(2)
  set listStorageResponse(ListStorageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasListStorageResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearListStorageResponse() => clearField(2);
  @$pb.TagNumber(2)
  ListStorageResponse ensureListStorageResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  ListCategoryResponse get listCategoryResponse => $_getN(2);
  @$pb.TagNumber(3)
  set listCategoryResponse(ListCategoryResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasListCategoryResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearListCategoryResponse() => clearField(3);
  @$pb.TagNumber(3)
  ListCategoryResponse ensureListCategoryResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  ListSubCategoryResponse get listSubCategoryResponse => $_getN(3);
  @$pb.TagNumber(4)
  set listSubCategoryResponse(ListSubCategoryResponse v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasListSubCategoryResponse() => $_has(3);
  @$pb.TagNumber(4)
  void clearListSubCategoryResponse() => clearField(4);
  @$pb.TagNumber(4)
  ListSubCategoryResponse ensureListSubCategoryResponse() => $_ensure(3);

  @$pb.TagNumber(5)
  ListValidityOfferResponse get listValidityOfferResponse => $_getN(4);
  @$pb.TagNumber(5)
  set listValidityOfferResponse(ListValidityOfferResponse v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasListValidityOfferResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearListValidityOfferResponse() => clearField(5);
  @$pb.TagNumber(5)
  ListValidityOfferResponse ensureListValidityOfferResponse() => $_ensure(4);

  @$pb.TagNumber(6)
  ListPayConditionResponse get listPayConditionResponse => $_getN(5);
  @$pb.TagNumber(6)
  set listPayConditionResponse(ListPayConditionResponse v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasListPayConditionResponse() => $_has(5);
  @$pb.TagNumber(6)
  void clearListPayConditionResponse() => clearField(6);
  @$pb.TagNumber(6)
  ListPayConditionResponse ensureListPayConditionResponse() => $_ensure(5);

  @$pb.TagNumber(7)
  ListVoucherTypeResponse get listVoucherTypeResponse => $_getN(6);
  @$pb.TagNumber(7)
  set listVoucherTypeResponse(ListVoucherTypeResponse v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasListVoucherTypeResponse() => $_has(6);
  @$pb.TagNumber(7)
  void clearListVoucherTypeResponse() => clearField(7);
  @$pb.TagNumber(7)
  ListVoucherTypeResponse ensureListVoucherTypeResponse() => $_ensure(6);

  @$pb.TagNumber(8)
  $0.DocumentResponse get defaultClientResponse => $_getN(7);
  @$pb.TagNumber(8)
  set defaultClientResponse($0.DocumentResponse v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDefaultClientResponse() => $_has(7);
  @$pb.TagNumber(8)
  void clearDefaultClientResponse() => clearField(8);
  @$pb.TagNumber(8)
  $0.DocumentResponse ensureDefaultClientResponse() => $_ensure(7);

  @$pb.TagNumber(9)
  ListSellerResponse get listSellerResponse => $_getN(8);
  @$pb.TagNumber(9)
  set listSellerResponse(ListSellerResponse v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasListSellerResponse() => $_has(8);
  @$pb.TagNumber(9)
  void clearListSellerResponse() => clearField(9);
  @$pb.TagNumber(9)
  ListSellerResponse ensureListSellerResponse() => $_ensure(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
