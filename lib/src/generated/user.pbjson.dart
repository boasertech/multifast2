//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userUpdateRequestDescriptor instead')
const UserUpdateRequest$json = {
  '1': 'UserUpdateRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'documentTypeId', '3': 2, '4': 1, '5': 5, '10': 'documentTypeId'},
    {'1': 'document', '3': 3, '4': 1, '5': 9, '10': 'document'},
    {'1': 'fullname', '3': 4, '4': 1, '5': 9, '10': 'fullname'},
    {'1': 'birthDate', '3': 5, '4': 1, '5': 9, '10': 'birthDate'},
    {'1': 'gender', '3': 6, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'email', '3': 7, '4': 1, '5': 9, '10': 'email'},
    {'1': 'phone', '3': 8, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'positionId', '3': 9, '4': 1, '5': 5, '10': 'positionId'},
  ],
};

/// Descriptor for `UserUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userUpdateRequestDescriptor = $convert.base64Decode(
    'ChFVc2VyVXBkYXRlUmVxdWVzdBIWCgZ1c2VySWQYASABKAVSBnVzZXJJZBImCg5kb2N1bWVudF'
    'R5cGVJZBgCIAEoBVIOZG9jdW1lbnRUeXBlSWQSGgoIZG9jdW1lbnQYAyABKAlSCGRvY3VtZW50'
    'EhoKCGZ1bGxuYW1lGAQgASgJUghmdWxsbmFtZRIcCgliaXJ0aERhdGUYBSABKAlSCWJpcnRoRG'
    'F0ZRIWCgZnZW5kZXIYBiABKAlSBmdlbmRlchIUCgVlbWFpbBgHIAEoCVIFZW1haWwSFAoFcGhv'
    'bmUYCCABKAlSBXBob25lEh4KCnBvc2l0aW9uSWQYCSABKAVSCnBvc2l0aW9uSWQ=');

@$core.Deprecated('Use userUpdateResponseDescriptor instead')
const UserUpdateResponse$json = {
  '1': 'UserUpdateResponse',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `UserUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userUpdateResponseDescriptor = $convert.base64Decode(
    'ChJVc2VyVXBkYXRlUmVzcG9uc2USEgoEY29kZRgBIAEoCVIEY29kZRIYCgdtZXNzYWdlGAIgAS'
    'gJUgdtZXNzYWdl');

@$core.Deprecated('Use oneOfUserUpdateResponseDescriptor instead')
const OneOfUserUpdateResponse$json = {
  '1': 'OneOfUserUpdateResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.error.Error', '9': 0, '10': 'error'},
    {'1': 'userUpdateResponse', '3': 2, '4': 1, '5': 11, '6': '.user.UserUpdateResponse', '9': 0, '10': 'userUpdateResponse'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `OneOfUserUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneOfUserUpdateResponseDescriptor = $convert.base64Decode(
    'ChdPbmVPZlVzZXJVcGRhdGVSZXNwb25zZRIkCgVlcnJvchgBIAEoCzIMLmVycm9yLkVycm9ySA'
    'BSBWVycm9yEkoKEnVzZXJVcGRhdGVSZXNwb25zZRgCIAEoCzIYLnVzZXIuVXNlclVwZGF0ZVJl'
    'c3BvbnNlSABSEnVzZXJVcGRhdGVSZXNwb25zZUIKCghyZXNwb25zZQ==');

