//
//  Generated code. Do not modify.
//  source: auth.proto
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

class LoginRequest extends $pb.GeneratedMessage {
  factory LoginRequest({
    $core.String? username,
    $core.String? password,
    $core.String? companyRuc,
    $fixnum.Int64? branchId,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (password != null) {
      $result.password = password;
    }
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    if (branchId != null) {
      $result.branchId = branchId;
    }
    return $result;
  }
  LoginRequest._() : super();
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..aInt64(4, _omitFieldNames ? '' : 'branchId', protoName: 'branchId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get companyRuc => $_getSZ(2);
  @$pb.TagNumber(3)
  set companyRuc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompanyRuc() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompanyRuc() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get branchId => $_getI64(3);
  @$pb.TagNumber(4)
  set branchId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBranchId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBranchId() => clearField(4);
}

class LoginResponse extends $pb.GeneratedMessage {
  factory LoginResponse({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  LoginResponse._() : super();
  factory LoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse)) as LoginResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class ListEnterprisesRequest extends $pb.GeneratedMessage {
  factory ListEnterprisesRequest({
    $core.int? userId,
    $core.String? companyRuc,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    return $result;
  }
  ListEnterprisesRequest._() : super();
  factory ListEnterprisesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListEnterprisesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListEnterprisesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListEnterprisesRequest clone() => ListEnterprisesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListEnterprisesRequest copyWith(void Function(ListEnterprisesRequest) updates) => super.copyWith((message) => updates(message as ListEnterprisesRequest)) as ListEnterprisesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEnterprisesRequest create() => ListEnterprisesRequest._();
  ListEnterprisesRequest createEmptyInstance() => create();
  static $pb.PbList<ListEnterprisesRequest> createRepeated() => $pb.PbList<ListEnterprisesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListEnterprisesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListEnterprisesRequest>(create);
  static ListEnterprisesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get companyRuc => $_getSZ(1);
  @$pb.TagNumber(2)
  set companyRuc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompanyRuc() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompanyRuc() => clearField(2);
}

class ListEnterprisesResponse extends $pb.GeneratedMessage {
  factory ListEnterprisesResponse({
    $core.Iterable<Enterprise>? enterprises,
  }) {
    final $result = create();
    if (enterprises != null) {
      $result.enterprises.addAll(enterprises);
    }
    return $result;
  }
  ListEnterprisesResponse._() : super();
  factory ListEnterprisesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListEnterprisesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListEnterprisesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..pc<Enterprise>(1, _omitFieldNames ? '' : 'enterprises', $pb.PbFieldType.PM, subBuilder: Enterprise.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListEnterprisesResponse clone() => ListEnterprisesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListEnterprisesResponse copyWith(void Function(ListEnterprisesResponse) updates) => super.copyWith((message) => updates(message as ListEnterprisesResponse)) as ListEnterprisesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEnterprisesResponse create() => ListEnterprisesResponse._();
  ListEnterprisesResponse createEmptyInstance() => create();
  static $pb.PbList<ListEnterprisesResponse> createRepeated() => $pb.PbList<ListEnterprisesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListEnterprisesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListEnterprisesResponse>(create);
  static ListEnterprisesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Enterprise> get enterprises => $_getList(0);
}

class ListBranchesRequest extends $pb.GeneratedMessage {
  factory ListBranchesRequest({
    $core.String? companyRuc,
    $core.int? userId,
    $fixnum.Int64? branchId,
  }) {
    final $result = create();
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (branchId != null) {
      $result.branchId = branchId;
    }
    return $result;
  }
  ListBranchesRequest._() : super();
  factory ListBranchesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBranchesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBranchesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..aInt64(3, _omitFieldNames ? '' : 'branchId', protoName: 'branchId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListBranchesRequest clone() => ListBranchesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListBranchesRequest copyWith(void Function(ListBranchesRequest) updates) => super.copyWith((message) => updates(message as ListBranchesRequest)) as ListBranchesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBranchesRequest create() => ListBranchesRequest._();
  ListBranchesRequest createEmptyInstance() => create();
  static $pb.PbList<ListBranchesRequest> createRepeated() => $pb.PbList<ListBranchesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListBranchesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBranchesRequest>(create);
  static ListBranchesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get companyRuc => $_getSZ(0);
  @$pb.TagNumber(1)
  set companyRuc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompanyRuc() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompanyRuc() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get branchId => $_getI64(2);
  @$pb.TagNumber(3)
  set branchId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBranchId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBranchId() => clearField(3);
}

class ListBranchesResponse extends $pb.GeneratedMessage {
  factory ListBranchesResponse({
    $core.Iterable<Branch>? branches,
    Enterprise? company,
  }) {
    final $result = create();
    if (branches != null) {
      $result.branches.addAll(branches);
    }
    if (company != null) {
      $result.company = company;
    }
    return $result;
  }
  ListBranchesResponse._() : super();
  factory ListBranchesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBranchesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBranchesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..pc<Branch>(1, _omitFieldNames ? '' : 'branches', $pb.PbFieldType.PM, subBuilder: Branch.create)
    ..aOM<Enterprise>(2, _omitFieldNames ? '' : 'company', subBuilder: Enterprise.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListBranchesResponse clone() => ListBranchesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListBranchesResponse copyWith(void Function(ListBranchesResponse) updates) => super.copyWith((message) => updates(message as ListBranchesResponse)) as ListBranchesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBranchesResponse create() => ListBranchesResponse._();
  ListBranchesResponse createEmptyInstance() => create();
  static $pb.PbList<ListBranchesResponse> createRepeated() => $pb.PbList<ListBranchesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListBranchesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBranchesResponse>(create);
  static ListBranchesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Branch> get branches => $_getList(0);

  @$pb.TagNumber(2)
  Enterprise get company => $_getN(1);
  @$pb.TagNumber(2)
  set company(Enterprise v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompany() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompany() => clearField(2);
  @$pb.TagNumber(2)
  Enterprise ensureCompany() => $_ensure(1);
}

class Enterprise extends $pb.GeneratedMessage {
  factory Enterprise({
    $core.String? companyRuc,
    $core.String? name,
    $core.String? logo,
    $core.String? validationCode,
  }) {
    final $result = create();
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    if (name != null) {
      $result.name = name;
    }
    if (logo != null) {
      $result.logo = logo;
    }
    if (validationCode != null) {
      $result.validationCode = validationCode;
    }
    return $result;
  }
  Enterprise._() : super();
  factory Enterprise.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Enterprise.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Enterprise', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'logo')
    ..aOS(4, _omitFieldNames ? '' : 'validationCode', protoName: 'validationCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Enterprise clone() => Enterprise()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Enterprise copyWith(void Function(Enterprise) updates) => super.copyWith((message) => updates(message as Enterprise)) as Enterprise;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Enterprise create() => Enterprise._();
  Enterprise createEmptyInstance() => create();
  static $pb.PbList<Enterprise> createRepeated() => $pb.PbList<Enterprise>();
  @$core.pragma('dart2js:noInline')
  static Enterprise getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Enterprise>(create);
  static Enterprise? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get companyRuc => $_getSZ(0);
  @$pb.TagNumber(1)
  set companyRuc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompanyRuc() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompanyRuc() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get logo => $_getSZ(2);
  @$pb.TagNumber(3)
  set logo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLogo() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get validationCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set validationCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidationCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidationCode() => clearField(4);
}

class Branch extends $pb.GeneratedMessage {
  factory Branch({
    $fixnum.Int64? branchId,
    $core.String? name,
  }) {
    final $result = create();
    if (branchId != null) {
      $result.branchId = branchId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  Branch._() : super();
  factory Branch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Branch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Branch', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'branchId', protoName: 'branchId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Branch clone() => Branch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Branch copyWith(void Function(Branch) updates) => super.copyWith((message) => updates(message as Branch)) as Branch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Branch create() => Branch._();
  Branch createEmptyInstance() => create();
  static $pb.PbList<Branch> createRepeated() => $pb.PbList<Branch>();
  @$core.pragma('dart2js:noInline')
  static Branch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Branch>(create);
  static Branch? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get branchId => $_getI64(0);
  @$pb.TagNumber(1)
  set branchId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBranchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBranchId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class UserRequest extends $pb.GeneratedMessage {
  factory UserRequest({
    $core.int? userId,
    $core.String? companyRuc,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    return $result;
  }
  UserRequest._() : super();
  factory UserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRequest clone() => UserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRequest copyWith(void Function(UserRequest) updates) => super.copyWith((message) => updates(message as UserRequest)) as UserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRequest create() => UserRequest._();
  UserRequest createEmptyInstance() => create();
  static $pb.PbList<UserRequest> createRepeated() => $pb.PbList<UserRequest>();
  @$core.pragma('dart2js:noInline')
  static UserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRequest>(create);
  static UserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get companyRuc => $_getSZ(1);
  @$pb.TagNumber(2)
  set companyRuc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompanyRuc() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompanyRuc() => clearField(2);
}

class UserResponse extends $pb.GeneratedMessage {
  factory UserResponse({
    $core.String? token,
    Enterprise? company,
    Branch? branch,
    $core.String? username,
    $core.String? fullname,
    $core.String? rolName,
    $core.String? lastConnection,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (company != null) {
      $result.company = company;
    }
    if (branch != null) {
      $result.branch = branch;
    }
    if (username != null) {
      $result.username = username;
    }
    if (fullname != null) {
      $result.fullname = fullname;
    }
    if (rolName != null) {
      $result.rolName = rolName;
    }
    if (lastConnection != null) {
      $result.lastConnection = lastConnection;
    }
    return $result;
  }
  UserResponse._() : super();
  factory UserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOM<Enterprise>(2, _omitFieldNames ? '' : 'company', subBuilder: Enterprise.create)
    ..aOM<Branch>(3, _omitFieldNames ? '' : 'branch', subBuilder: Branch.create)
    ..aOS(4, _omitFieldNames ? '' : 'username')
    ..aOS(5, _omitFieldNames ? '' : 'fullname')
    ..aOS(6, _omitFieldNames ? '' : 'rolName', protoName: 'rolName')
    ..aOS(7, _omitFieldNames ? '' : 'lastConnection', protoName: 'lastConnection')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserResponse clone() => UserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserResponse copyWith(void Function(UserResponse) updates) => super.copyWith((message) => updates(message as UserResponse)) as UserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserResponse create() => UserResponse._();
  UserResponse createEmptyInstance() => create();
  static $pb.PbList<UserResponse> createRepeated() => $pb.PbList<UserResponse>();
  @$core.pragma('dart2js:noInline')
  static UserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserResponse>(create);
  static UserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  Enterprise get company => $_getN(1);
  @$pb.TagNumber(2)
  set company(Enterprise v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompany() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompany() => clearField(2);
  @$pb.TagNumber(2)
  Enterprise ensureCompany() => $_ensure(1);

  @$pb.TagNumber(3)
  Branch get branch => $_getN(2);
  @$pb.TagNumber(3)
  set branch(Branch v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBranch() => $_has(2);
  @$pb.TagNumber(3)
  void clearBranch() => clearField(3);
  @$pb.TagNumber(3)
  Branch ensureBranch() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get username => $_getSZ(3);
  @$pb.TagNumber(4)
  set username($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUsername() => $_has(3);
  @$pb.TagNumber(4)
  void clearUsername() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get fullname => $_getSZ(4);
  @$pb.TagNumber(5)
  set fullname($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFullname() => $_has(4);
  @$pb.TagNumber(5)
  void clearFullname() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get rolName => $_getSZ(5);
  @$pb.TagNumber(6)
  set rolName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRolName() => $_has(5);
  @$pb.TagNumber(6)
  void clearRolName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastConnection => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastConnection($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastConnection() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastConnection() => clearField(7);
}

enum OneOfAuthResponse_Response {
  error, 
  userResponse, 
  listEnterprisesResponse, 
  listBranchesResponse, 
  notSet
}

class OneOfAuthResponse extends $pb.GeneratedMessage {
  factory OneOfAuthResponse({
    $1.Error? error,
    UserResponse? userResponse,
    ListEnterprisesResponse? listEnterprisesResponse,
    ListBranchesResponse? listBranchesResponse,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (userResponse != null) {
      $result.userResponse = userResponse;
    }
    if (listEnterprisesResponse != null) {
      $result.listEnterprisesResponse = listEnterprisesResponse;
    }
    if (listBranchesResponse != null) {
      $result.listBranchesResponse = listBranchesResponse;
    }
    return $result;
  }
  OneOfAuthResponse._() : super();
  factory OneOfAuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OneOfAuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, OneOfAuthResponse_Response> _OneOfAuthResponse_ResponseByTag = {
    1 : OneOfAuthResponse_Response.error,
    2 : OneOfAuthResponse_Response.userResponse,
    3 : OneOfAuthResponse_Response.listEnterprisesResponse,
    4 : OneOfAuthResponse_Response.listBranchesResponse,
    0 : OneOfAuthResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OneOfAuthResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<$1.Error>(1, _omitFieldNames ? '' : 'error', subBuilder: $1.Error.create)
    ..aOM<UserResponse>(2, _omitFieldNames ? '' : 'userResponse', protoName: 'userResponse', subBuilder: UserResponse.create)
    ..aOM<ListEnterprisesResponse>(3, _omitFieldNames ? '' : 'listEnterprisesResponse', protoName: 'listEnterprisesResponse', subBuilder: ListEnterprisesResponse.create)
    ..aOM<ListBranchesResponse>(4, _omitFieldNames ? '' : 'listBranchesResponse', protoName: 'listBranchesResponse', subBuilder: ListBranchesResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OneOfAuthResponse clone() => OneOfAuthResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OneOfAuthResponse copyWith(void Function(OneOfAuthResponse) updates) => super.copyWith((message) => updates(message as OneOfAuthResponse)) as OneOfAuthResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneOfAuthResponse create() => OneOfAuthResponse._();
  OneOfAuthResponse createEmptyInstance() => create();
  static $pb.PbList<OneOfAuthResponse> createRepeated() => $pb.PbList<OneOfAuthResponse>();
  @$core.pragma('dart2js:noInline')
  static OneOfAuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OneOfAuthResponse>(create);
  static OneOfAuthResponse? _defaultInstance;

  OneOfAuthResponse_Response whichResponse() => _OneOfAuthResponse_ResponseByTag[$_whichOneof(0)]!;
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
  UserResponse get userResponse => $_getN(1);
  @$pb.TagNumber(2)
  set userResponse(UserResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserResponse() => clearField(2);
  @$pb.TagNumber(2)
  UserResponse ensureUserResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  ListEnterprisesResponse get listEnterprisesResponse => $_getN(2);
  @$pb.TagNumber(3)
  set listEnterprisesResponse(ListEnterprisesResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasListEnterprisesResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearListEnterprisesResponse() => clearField(3);
  @$pb.TagNumber(3)
  ListEnterprisesResponse ensureListEnterprisesResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  ListBranchesResponse get listBranchesResponse => $_getN(3);
  @$pb.TagNumber(4)
  set listBranchesResponse(ListBranchesResponse v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasListBranchesResponse() => $_has(3);
  @$pb.TagNumber(4)
  void clearListBranchesResponse() => clearField(4);
  @$pb.TagNumber(4)
  ListBranchesResponse ensureListBranchesResponse() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
