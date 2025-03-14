//
//  Generated code. Do not modify.
//  source: client.proto
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

class DocumentRequest extends $pb.GeneratedMessage {
  factory DocumentRequest({
    $core.String? document,
    $core.String? companyRuc,
    $core.String? codeDocument,
    $fixnum.Int64? clientId,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    if (codeDocument != null) {
      $result.codeDocument = codeDocument;
    }
    if (clientId != null) {
      $result.clientId = clientId;
    }
    return $result;
  }
  DocumentRequest._() : super();
  factory DocumentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'client'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'document')
    ..aOS(2, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..aOS(3, _omitFieldNames ? '' : 'codeDocument', protoName: 'codeDocument')
    ..aInt64(4, _omitFieldNames ? '' : 'clientId', protoName: 'clientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocumentRequest clone() => DocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocumentRequest copyWith(void Function(DocumentRequest) updates) => super.copyWith((message) => updates(message as DocumentRequest)) as DocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentRequest create() => DocumentRequest._();
  DocumentRequest createEmptyInstance() => create();
  static $pb.PbList<DocumentRequest> createRepeated() => $pb.PbList<DocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static DocumentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocumentRequest>(create);
  static DocumentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get document => $_getSZ(0);
  @$pb.TagNumber(1)
  set document($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get companyRuc => $_getSZ(1);
  @$pb.TagNumber(2)
  set companyRuc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompanyRuc() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompanyRuc() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get codeDocument => $_getSZ(2);
  @$pb.TagNumber(3)
  set codeDocument($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCodeDocument() => $_has(2);
  @$pb.TagNumber(3)
  void clearCodeDocument() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get clientId => $_getI64(3);
  @$pb.TagNumber(4)
  set clientId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClientId() => $_has(3);
  @$pb.TagNumber(4)
  void clearClientId() => clearField(4);
}

class DocumentResponse extends $pb.GeneratedMessage {
  factory DocumentResponse({
    $core.String? document,
    $core.String? name,
    $core.String? documentTypeCode,
    $core.String? principalPhone,
    $core.String? secondPhone,
    $core.String? gender,
    $core.String? birthDate,
    $fixnum.Int64? clientId,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    if (name != null) {
      $result.name = name;
    }
    if (documentTypeCode != null) {
      $result.documentTypeCode = documentTypeCode;
    }
    if (principalPhone != null) {
      $result.principalPhone = principalPhone;
    }
    if (secondPhone != null) {
      $result.secondPhone = secondPhone;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (birthDate != null) {
      $result.birthDate = birthDate;
    }
    if (clientId != null) {
      $result.clientId = clientId;
    }
    return $result;
  }
  DocumentResponse._() : super();
  factory DocumentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DocumentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DocumentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'client'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'document')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'documentTypeCode', protoName: 'documentTypeCode')
    ..aOS(4, _omitFieldNames ? '' : 'principalPhone', protoName: 'principalPhone')
    ..aOS(5, _omitFieldNames ? '' : 'secondPhone', protoName: 'secondPhone')
    ..aOS(6, _omitFieldNames ? '' : 'gender')
    ..aOS(7, _omitFieldNames ? '' : 'birthDate', protoName: 'birthDate')
    ..aInt64(8, _omitFieldNames ? '' : 'clientId', protoName: 'clientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DocumentResponse clone() => DocumentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DocumentResponse copyWith(void Function(DocumentResponse) updates) => super.copyWith((message) => updates(message as DocumentResponse)) as DocumentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentResponse create() => DocumentResponse._();
  DocumentResponse createEmptyInstance() => create();
  static $pb.PbList<DocumentResponse> createRepeated() => $pb.PbList<DocumentResponse>();
  @$core.pragma('dart2js:noInline')
  static DocumentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DocumentResponse>(create);
  static DocumentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get document => $_getSZ(0);
  @$pb.TagNumber(1)
  set document($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentTypeCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentTypeCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocumentTypeCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentTypeCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get principalPhone => $_getSZ(3);
  @$pb.TagNumber(4)
  set principalPhone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrincipalPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrincipalPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get secondPhone => $_getSZ(4);
  @$pb.TagNumber(5)
  set secondPhone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSecondPhone() => $_has(4);
  @$pb.TagNumber(5)
  void clearSecondPhone() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get gender => $_getSZ(5);
  @$pb.TagNumber(6)
  set gender($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGender() => $_has(5);
  @$pb.TagNumber(6)
  void clearGender() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get birthDate => $_getSZ(6);
  @$pb.TagNumber(7)
  set birthDate($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBirthDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearBirthDate() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get clientId => $_getI64(7);
  @$pb.TagNumber(8)
  set clientId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasClientId() => $_has(7);
  @$pb.TagNumber(8)
  void clearClientId() => clearField(8);
}

enum OneOfDocumentResponse_Response {
  error, 
  documentResponse, 
  notSet
}

class OneOfDocumentResponse extends $pb.GeneratedMessage {
  factory OneOfDocumentResponse({
    $1.Error? error,
    DocumentResponse? documentResponse,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (documentResponse != null) {
      $result.documentResponse = documentResponse;
    }
    return $result;
  }
  OneOfDocumentResponse._() : super();
  factory OneOfDocumentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OneOfDocumentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, OneOfDocumentResponse_Response> _OneOfDocumentResponse_ResponseByTag = {
    1 : OneOfDocumentResponse_Response.error,
    2 : OneOfDocumentResponse_Response.documentResponse,
    0 : OneOfDocumentResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OneOfDocumentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'client'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.Error>(1, _omitFieldNames ? '' : 'error', subBuilder: $1.Error.create)
    ..aOM<DocumentResponse>(2, _omitFieldNames ? '' : 'documentResponse', protoName: 'documentResponse', subBuilder: DocumentResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OneOfDocumentResponse clone() => OneOfDocumentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OneOfDocumentResponse copyWith(void Function(OneOfDocumentResponse) updates) => super.copyWith((message) => updates(message as OneOfDocumentResponse)) as OneOfDocumentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneOfDocumentResponse create() => OneOfDocumentResponse._();
  OneOfDocumentResponse createEmptyInstance() => create();
  static $pb.PbList<OneOfDocumentResponse> createRepeated() => $pb.PbList<OneOfDocumentResponse>();
  @$core.pragma('dart2js:noInline')
  static OneOfDocumentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OneOfDocumentResponse>(create);
  static OneOfDocumentResponse? _defaultInstance;

  OneOfDocumentResponse_Response whichResponse() => _OneOfDocumentResponse_ResponseByTag[$_whichOneof(0)]!;
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
  DocumentResponse get documentResponse => $_getN(1);
  @$pb.TagNumber(2)
  set documentResponse(DocumentResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentResponse() => clearField(2);
  @$pb.TagNumber(2)
  DocumentResponse ensureDocumentResponse() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
