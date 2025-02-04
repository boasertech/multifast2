//
//  Generated code. Do not modify.
//  source: qproduct_detail.proto
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

class QProductDetailRequest extends $pb.GeneratedMessage {
  factory QProductDetailRequest({
    $fixnum.Int64? productId,
    $core.int? branchId,
  }) {
    final $result = create();
    if (productId != null) {
      $result.productId = productId;
    }
    if (branchId != null) {
      $result.branchId = branchId;
    }
    return $result;
  }
  QProductDetailRequest._() : super();
  factory QProductDetailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QProductDetailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QProductDetailRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'qproduct_detail'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'productId', protoName: 'productId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'branchId', $pb.PbFieldType.O3, protoName: 'branchId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QProductDetailRequest clone() => QProductDetailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QProductDetailRequest copyWith(void Function(QProductDetailRequest) updates) => super.copyWith((message) => updates(message as QProductDetailRequest)) as QProductDetailRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QProductDetailRequest create() => QProductDetailRequest._();
  QProductDetailRequest createEmptyInstance() => create();
  static $pb.PbList<QProductDetailRequest> createRepeated() => $pb.PbList<QProductDetailRequest>();
  @$core.pragma('dart2js:noInline')
  static QProductDetailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QProductDetailRequest>(create);
  static QProductDetailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get productId => $_getI64(0);
  @$pb.TagNumber(1)
  set productId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get branchId => $_getIZ(1);
  @$pb.TagNumber(2)
  set branchId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBranchId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBranchId() => clearField(2);
}

class QStorage extends $pb.GeneratedMessage {
  factory QStorage({
    $fixnum.Int64? storageId,
    $core.String? name,
    $core.double? quantity,
    $fixnum.Int64? branchId,
  }) {
    final $result = create();
    if (storageId != null) {
      $result.storageId = storageId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (branchId != null) {
      $result.branchId = branchId;
    }
    return $result;
  }
  QStorage._() : super();
  factory QStorage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QStorage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QStorage', package: const $pb.PackageName(_omitMessageNames ? '' : 'qproduct_detail'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'storageId', protoName: 'storageId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.OD)
    ..aInt64(4, _omitFieldNames ? '' : 'branchId', protoName: 'branchId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QStorage clone() => QStorage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QStorage copyWith(void Function(QStorage) updates) => super.copyWith((message) => updates(message as QStorage)) as QStorage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QStorage create() => QStorage._();
  QStorage createEmptyInstance() => create();
  static $pb.PbList<QStorage> createRepeated() => $pb.PbList<QStorage>();
  @$core.pragma('dart2js:noInline')
  static QStorage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QStorage>(create);
  static QStorage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get storageId => $_getI64(0);
  @$pb.TagNumber(1)
  set storageId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStorageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStorageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get quantity => $_getN(2);
  @$pb.TagNumber(3)
  set quantity($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get branchId => $_getI64(3);
  @$pb.TagNumber(4)
  set branchId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBranchId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBranchId() => clearField(4);
}

class QProductDetailResponse extends $pb.GeneratedMessage {
  factory QProductDetailResponse({
    $core.Iterable<QStorage>? storages,
  }) {
    final $result = create();
    if (storages != null) {
      $result.storages.addAll(storages);
    }
    return $result;
  }
  QProductDetailResponse._() : super();
  factory QProductDetailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QProductDetailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QProductDetailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qproduct_detail'), createEmptyInstance: create)
    ..pc<QStorage>(1, _omitFieldNames ? '' : 'storages', $pb.PbFieldType.PM, subBuilder: QStorage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QProductDetailResponse clone() => QProductDetailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QProductDetailResponse copyWith(void Function(QProductDetailResponse) updates) => super.copyWith((message) => updates(message as QProductDetailResponse)) as QProductDetailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QProductDetailResponse create() => QProductDetailResponse._();
  QProductDetailResponse createEmptyInstance() => create();
  static $pb.PbList<QProductDetailResponse> createRepeated() => $pb.PbList<QProductDetailResponse>();
  @$core.pragma('dart2js:noInline')
  static QProductDetailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QProductDetailResponse>(create);
  static QProductDetailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<QStorage> get storages => $_getList(0);
}

enum OneOfQProductDetailResponse_Response {
  error, 
  qproductDetailResponse, 
  notSet
}

class OneOfQProductDetailResponse extends $pb.GeneratedMessage {
  factory OneOfQProductDetailResponse({
    $1.Error? error,
    QProductDetailResponse? qproductDetailResponse,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (qproductDetailResponse != null) {
      $result.qproductDetailResponse = qproductDetailResponse;
    }
    return $result;
  }
  OneOfQProductDetailResponse._() : super();
  factory OneOfQProductDetailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OneOfQProductDetailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, OneOfQProductDetailResponse_Response> _OneOfQProductDetailResponse_ResponseByTag = {
    1 : OneOfQProductDetailResponse_Response.error,
    2 : OneOfQProductDetailResponse_Response.qproductDetailResponse,
    0 : OneOfQProductDetailResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OneOfQProductDetailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'qproduct_detail'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.Error>(1, _omitFieldNames ? '' : 'error', subBuilder: $1.Error.create)
    ..aOM<QProductDetailResponse>(2, _omitFieldNames ? '' : 'qproductDetailResponse', protoName: 'qproductDetailResponse', subBuilder: QProductDetailResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OneOfQProductDetailResponse clone() => OneOfQProductDetailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OneOfQProductDetailResponse copyWith(void Function(OneOfQProductDetailResponse) updates) => super.copyWith((message) => updates(message as OneOfQProductDetailResponse)) as OneOfQProductDetailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneOfQProductDetailResponse create() => OneOfQProductDetailResponse._();
  OneOfQProductDetailResponse createEmptyInstance() => create();
  static $pb.PbList<OneOfQProductDetailResponse> createRepeated() => $pb.PbList<OneOfQProductDetailResponse>();
  @$core.pragma('dart2js:noInline')
  static OneOfQProductDetailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OneOfQProductDetailResponse>(create);
  static OneOfQProductDetailResponse? _defaultInstance;

  OneOfQProductDetailResponse_Response whichResponse() => _OneOfQProductDetailResponse_ResponseByTag[$_whichOneof(0)]!;
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
  QProductDetailResponse get qproductDetailResponse => $_getN(1);
  @$pb.TagNumber(2)
  set qproductDetailResponse(QProductDetailResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasQproductDetailResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearQproductDetailResponse() => clearField(2);
  @$pb.TagNumber(2)
  QProductDetailResponse ensureQproductDetailResponse() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
