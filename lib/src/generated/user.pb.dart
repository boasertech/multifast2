//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'error.pb.dart' as $1;

class UserUpdateRequest extends $pb.GeneratedMessage {
  factory UserUpdateRequest({
    $core.int? userId,
    $core.int? documentTypeId,
    $core.String? document,
    $core.String? fullname,
    $core.String? birthDate,
    $core.String? gender,
    $core.String? email,
    $core.String? phone,
    $core.int? positionId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (documentTypeId != null) {
      $result.documentTypeId = documentTypeId;
    }
    if (document != null) {
      $result.document = document;
    }
    if (fullname != null) {
      $result.fullname = fullname;
    }
    if (birthDate != null) {
      $result.birthDate = birthDate;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (email != null) {
      $result.email = email;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (positionId != null) {
      $result.positionId = positionId;
    }
    return $result;
  }
  UserUpdateRequest._() : super();
  factory UserUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'documentTypeId', $pb.PbFieldType.O3, protoName: 'documentTypeId')
    ..aOS(3, _omitFieldNames ? '' : 'document')
    ..aOS(4, _omitFieldNames ? '' : 'fullname')
    ..aOS(5, _omitFieldNames ? '' : 'birthDate', protoName: 'birthDate')
    ..aOS(6, _omitFieldNames ? '' : 'gender')
    ..aOS(7, _omitFieldNames ? '' : 'email')
    ..aOS(8, _omitFieldNames ? '' : 'phone')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'positionId', $pb.PbFieldType.O3, protoName: 'positionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserUpdateRequest clone() => UserUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserUpdateRequest copyWith(void Function(UserUpdateRequest) updates) => super.copyWith((message) => updates(message as UserUpdateRequest)) as UserUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserUpdateRequest create() => UserUpdateRequest._();
  UserUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UserUpdateRequest> createRepeated() => $pb.PbList<UserUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UserUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserUpdateRequest>(create);
  static UserUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get documentTypeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set documentTypeId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentTypeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentTypeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get document => $_getSZ(2);
  @$pb.TagNumber(3)
  set document($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocument() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocument() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get fullname => $_getSZ(3);
  @$pb.TagNumber(4)
  set fullname($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFullname() => $_has(3);
  @$pb.TagNumber(4)
  void clearFullname() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get birthDate => $_getSZ(4);
  @$pb.TagNumber(5)
  set birthDate($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBirthDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearBirthDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get gender => $_getSZ(5);
  @$pb.TagNumber(6)
  set gender($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGender() => $_has(5);
  @$pb.TagNumber(6)
  void clearGender() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get email => $_getSZ(6);
  @$pb.TagNumber(7)
  set email($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEmail() => $_has(6);
  @$pb.TagNumber(7)
  void clearEmail() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get phone => $_getSZ(7);
  @$pb.TagNumber(8)
  set phone($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPhone() => $_has(7);
  @$pb.TagNumber(8)
  void clearPhone() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get positionId => $_getIZ(8);
  @$pb.TagNumber(9)
  set positionId($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPositionId() => $_has(8);
  @$pb.TagNumber(9)
  void clearPositionId() => clearField(9);
}

class UserUpdateResponse extends $pb.GeneratedMessage {
  factory UserUpdateResponse({
    $core.String? code,
    $core.String? message,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  UserUpdateResponse._() : super();
  factory UserUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserUpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserUpdateResponse clone() => UserUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserUpdateResponse copyWith(void Function(UserUpdateResponse) updates) => super.copyWith((message) => updates(message as UserUpdateResponse)) as UserUpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserUpdateResponse create() => UserUpdateResponse._();
  UserUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UserUpdateResponse> createRepeated() => $pb.PbList<UserUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UserUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserUpdateResponse>(create);
  static UserUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

enum OneOfUserUpdateResponse_Response {
  error, 
  userUpdateResponse, 
  notSet
}

class OneOfUserUpdateResponse extends $pb.GeneratedMessage {
  factory OneOfUserUpdateResponse({
    $1.Error? error,
    UserUpdateResponse? userUpdateResponse,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (userUpdateResponse != null) {
      $result.userUpdateResponse = userUpdateResponse;
    }
    return $result;
  }
  OneOfUserUpdateResponse._() : super();
  factory OneOfUserUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OneOfUserUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, OneOfUserUpdateResponse_Response> _OneOfUserUpdateResponse_ResponseByTag = {
    1 : OneOfUserUpdateResponse_Response.error,
    2 : OneOfUserUpdateResponse_Response.userUpdateResponse,
    0 : OneOfUserUpdateResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OneOfUserUpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.Error>(1, _omitFieldNames ? '' : 'error', subBuilder: $1.Error.create)
    ..aOM<UserUpdateResponse>(2, _omitFieldNames ? '' : 'userUpdateResponse', protoName: 'userUpdateResponse', subBuilder: UserUpdateResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OneOfUserUpdateResponse clone() => OneOfUserUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OneOfUserUpdateResponse copyWith(void Function(OneOfUserUpdateResponse) updates) => super.copyWith((message) => updates(message as OneOfUserUpdateResponse)) as OneOfUserUpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneOfUserUpdateResponse create() => OneOfUserUpdateResponse._();
  OneOfUserUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<OneOfUserUpdateResponse> createRepeated() => $pb.PbList<OneOfUserUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static OneOfUserUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OneOfUserUpdateResponse>(create);
  static OneOfUserUpdateResponse? _defaultInstance;

  OneOfUserUpdateResponse_Response whichResponse() => _OneOfUserUpdateResponse_ResponseByTag[$_whichOneof(0)]!;
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
  UserUpdateResponse get userUpdateResponse => $_getN(1);
  @$pb.TagNumber(2)
  set userUpdateResponse(UserUpdateResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserUpdateResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserUpdateResponse() => clearField(2);
  @$pb.TagNumber(2)
  UserUpdateResponse ensureUserUpdateResponse() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
