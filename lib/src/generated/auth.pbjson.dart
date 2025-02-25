//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use closeRequestDescriptor instead')
const CloseRequest$json = {
  '1': 'CloseRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `CloseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeRequestDescriptor = $convert.base64Decode(
    'CgxDbG9zZVJlcXVlc3QSFgoGdXNlcklkGAEgASgFUgZ1c2VySWQ=');

@$core.Deprecated('Use closeResponseDescriptor instead')
const CloseResponse$json = {
  '1': 'CloseResponse',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `CloseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeResponseDescriptor = $convert.base64Decode(
    'Cg1DbG9zZVJlc3BvbnNlEhYKBnVzZXJJZBgBIAEoBVIGdXNlcklk');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'companyRuc', '3': 3, '4': 1, '5': 9, '10': 'companyRuc'},
    {'1': 'branchId', '3': 4, '4': 1, '5': 3, '10': 'branchId'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGA'
    'IgASgJUghwYXNzd29yZBIeCgpjb21wYW55UnVjGAMgASgJUgpjb21wYW55UnVjEhoKCGJyYW5j'
    'aElkGAQgASgDUghicmFuY2hJZA==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEhYKBnVzZXJJZBgBIAEoBVIGdXNlcklk');

@$core.Deprecated('Use listEnterprisesRequestDescriptor instead')
const ListEnterprisesRequest$json = {
  '1': 'ListEnterprisesRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'companyRuc', '3': 2, '4': 1, '5': 9, '10': 'companyRuc'},
  ],
};

/// Descriptor for `ListEnterprisesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEnterprisesRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0RW50ZXJwcmlzZXNSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoBVIGdXNlcklkEh4KCmNvbX'
    'BhbnlSdWMYAiABKAlSCmNvbXBhbnlSdWM=');

@$core.Deprecated('Use listEnterprisesResponseDescriptor instead')
const ListEnterprisesResponse$json = {
  '1': 'ListEnterprisesResponse',
  '2': [
    {'1': 'enterprises', '3': 1, '4': 3, '5': 11, '6': '.auth.Enterprise', '10': 'enterprises'},
  ],
};

/// Descriptor for `ListEnterprisesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEnterprisesResponseDescriptor = $convert.base64Decode(
    'ChdMaXN0RW50ZXJwcmlzZXNSZXNwb25zZRIyCgtlbnRlcnByaXNlcxgBIAMoCzIQLmF1dGguRW'
    '50ZXJwcmlzZVILZW50ZXJwcmlzZXM=');

@$core.Deprecated('Use listBranchesRequestDescriptor instead')
const ListBranchesRequest$json = {
  '1': 'ListBranchesRequest',
  '2': [
    {'1': 'companyRuc', '3': 1, '4': 1, '5': 9, '10': 'companyRuc'},
    {'1': 'userId', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'branchId', '3': 3, '4': 1, '5': 3, '10': 'branchId'},
  ],
};

/// Descriptor for `ListBranchesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBranchesRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0QnJhbmNoZXNSZXF1ZXN0Eh4KCmNvbXBhbnlSdWMYASABKAlSCmNvbXBhbnlSdWMSFg'
    'oGdXNlcklkGAIgASgFUgZ1c2VySWQSGgoIYnJhbmNoSWQYAyABKANSCGJyYW5jaElk');

@$core.Deprecated('Use listBranchesResponseDescriptor instead')
const ListBranchesResponse$json = {
  '1': 'ListBranchesResponse',
  '2': [
    {'1': 'branches', '3': 1, '4': 3, '5': 11, '6': '.auth.Branch', '10': 'branches'},
    {'1': 'company', '3': 2, '4': 1, '5': 11, '6': '.auth.Enterprise', '10': 'company'},
  ],
};

/// Descriptor for `ListBranchesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBranchesResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0QnJhbmNoZXNSZXNwb25zZRIoCghicmFuY2hlcxgBIAMoCzIMLmF1dGguQnJhbmNoUg'
    'hicmFuY2hlcxIqCgdjb21wYW55GAIgASgLMhAuYXV0aC5FbnRlcnByaXNlUgdjb21wYW55');

@$core.Deprecated('Use enterpriseDescriptor instead')
const Enterprise$json = {
  '1': 'Enterprise',
  '2': [
    {'1': 'companyRuc', '3': 1, '4': 1, '5': 9, '10': 'companyRuc'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'logo', '3': 3, '4': 1, '5': 9, '10': 'logo'},
    {'1': 'validationCode', '3': 4, '4': 1, '5': 9, '10': 'validationCode'},
  ],
};

/// Descriptor for `Enterprise`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enterpriseDescriptor = $convert.base64Decode(
    'CgpFbnRlcnByaXNlEh4KCmNvbXBhbnlSdWMYASABKAlSCmNvbXBhbnlSdWMSEgoEbmFtZRgCIA'
    'EoCVIEbmFtZRISCgRsb2dvGAMgASgJUgRsb2dvEiYKDnZhbGlkYXRpb25Db2RlGAQgASgJUg52'
    'YWxpZGF0aW9uQ29kZQ==');

@$core.Deprecated('Use branchDescriptor instead')
const Branch$json = {
  '1': 'Branch',
  '2': [
    {'1': 'branchId', '3': 1, '4': 1, '5': 3, '10': 'branchId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Branch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List branchDescriptor = $convert.base64Decode(
    'CgZCcmFuY2gSGgoIYnJhbmNoSWQYASABKANSCGJyYW5jaElkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'U=');

@$core.Deprecated('Use userRequestDescriptor instead')
const UserRequest$json = {
  '1': 'UserRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'companyRuc', '3': 2, '4': 1, '5': 9, '10': 'companyRuc'},
  ],
};

/// Descriptor for `UserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRequestDescriptor = $convert.base64Decode(
    'CgtVc2VyUmVxdWVzdBIWCgZ1c2VySWQYASABKAVSBnVzZXJJZBIeCgpjb21wYW55UnVjGAIgAS'
    'gJUgpjb21wYW55UnVj');

@$core.Deprecated('Use userResponseDescriptor instead')
const UserResponse$json = {
  '1': 'UserResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'company', '3': 2, '4': 1, '5': 11, '6': '.auth.Enterprise', '10': 'company'},
    {'1': 'branch', '3': 3, '4': 1, '5': 11, '6': '.auth.Branch', '10': 'branch'},
    {'1': 'username', '3': 4, '4': 1, '5': 9, '10': 'username'},
    {'1': 'fullname', '3': 5, '4': 1, '5': 9, '10': 'fullname'},
    {'1': 'rolName', '3': 6, '4': 1, '5': 9, '10': 'rolName'},
    {'1': 'lastConnection', '3': 7, '4': 1, '5': 9, '10': 'lastConnection'},
    {'1': 'userId', '3': 8, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `UserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userResponseDescriptor = $convert.base64Decode(
    'CgxVc2VyUmVzcG9uc2USFAoFdG9rZW4YASABKAlSBXRva2VuEioKB2NvbXBhbnkYAiABKAsyEC'
    '5hdXRoLkVudGVycHJpc2VSB2NvbXBhbnkSJAoGYnJhbmNoGAMgASgLMgwuYXV0aC5CcmFuY2hS'
    'BmJyYW5jaBIaCgh1c2VybmFtZRgEIAEoCVIIdXNlcm5hbWUSGgoIZnVsbG5hbWUYBSABKAlSCG'
    'Z1bGxuYW1lEhgKB3JvbE5hbWUYBiABKAlSB3JvbE5hbWUSJgoObGFzdENvbm5lY3Rpb24YByAB'
    'KAlSDmxhc3RDb25uZWN0aW9uEhYKBnVzZXJJZBgIIAEoBVIGdXNlcklk');

@$core.Deprecated('Use oneOfAuthResponseDescriptor instead')
const OneOfAuthResponse$json = {
  '1': 'OneOfAuthResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.error.Error', '9': 0, '10': 'error'},
    {'1': 'userResponse', '3': 2, '4': 1, '5': 11, '6': '.auth.UserResponse', '9': 0, '10': 'userResponse'},
    {'1': 'listEnterprisesResponse', '3': 3, '4': 1, '5': 11, '6': '.auth.ListEnterprisesResponse', '9': 0, '10': 'listEnterprisesResponse'},
    {'1': 'listBranchesResponse', '3': 4, '4': 1, '5': 11, '6': '.auth.ListBranchesResponse', '9': 0, '10': 'listBranchesResponse'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `OneOfAuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneOfAuthResponseDescriptor = $convert.base64Decode(
    'ChFPbmVPZkF1dGhSZXNwb25zZRIkCgVlcnJvchgBIAEoCzIMLmVycm9yLkVycm9ySABSBWVycm'
    '9yEjgKDHVzZXJSZXNwb25zZRgCIAEoCzISLmF1dGguVXNlclJlc3BvbnNlSABSDHVzZXJSZXNw'
    'b25zZRJZChdsaXN0RW50ZXJwcmlzZXNSZXNwb25zZRgDIAEoCzIdLmF1dGguTGlzdEVudGVycH'
    'Jpc2VzUmVzcG9uc2VIAFIXbGlzdEVudGVycHJpc2VzUmVzcG9uc2USUAoUbGlzdEJyYW5jaGVz'
    'UmVzcG9uc2UYBCABKAsyGi5hdXRoLkxpc3RCcmFuY2hlc1Jlc3BvbnNlSABSFGxpc3RCcmFuY2'
    'hlc1Jlc3BvbnNlQgoKCHJlc3BvbnNl');

