//
//  Generated code. Do not modify.
//  source: qproduct_detail.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use qProductDetailRequestDescriptor instead')
const QProductDetailRequest$json = {
  '1': 'QProductDetailRequest',
  '2': [
    {'1': 'productId', '3': 1, '4': 1, '5': 3, '10': 'productId'},
    {'1': 'branchId', '3': 2, '4': 1, '5': 5, '10': 'branchId'},
  ],
};

/// Descriptor for `QProductDetailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qProductDetailRequestDescriptor = $convert.base64Decode(
    'ChVRUHJvZHVjdERldGFpbFJlcXVlc3QSHAoJcHJvZHVjdElkGAEgASgDUglwcm9kdWN0SWQSGg'
    'oIYnJhbmNoSWQYAiABKAVSCGJyYW5jaElk');

@$core.Deprecated('Use qStorageDescriptor instead')
const QStorage$json = {
  '1': 'QStorage',
  '2': [
    {'1': 'storageId', '3': 1, '4': 1, '5': 3, '10': 'storageId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 1, '10': 'quantity'},
    {'1': 'branchId', '3': 4, '4': 1, '5': 3, '10': 'branchId'},
  ],
};

/// Descriptor for `QStorage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qStorageDescriptor = $convert.base64Decode(
    'CghRU3RvcmFnZRIcCglzdG9yYWdlSWQYASABKANSCXN0b3JhZ2VJZBISCgRuYW1lGAIgASgJUg'
    'RuYW1lEhoKCHF1YW50aXR5GAMgASgBUghxdWFudGl0eRIaCghicmFuY2hJZBgEIAEoA1IIYnJh'
    'bmNoSWQ=');

@$core.Deprecated('Use qProductDetailResponseDescriptor instead')
const QProductDetailResponse$json = {
  '1': 'QProductDetailResponse',
  '2': [
    {'1': 'storages', '3': 1, '4': 3, '5': 11, '6': '.qproduct_detail.QStorage', '10': 'storages'},
  ],
};

/// Descriptor for `QProductDetailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qProductDetailResponseDescriptor = $convert.base64Decode(
    'ChZRUHJvZHVjdERldGFpbFJlc3BvbnNlEjUKCHN0b3JhZ2VzGAEgAygLMhkucXByb2R1Y3RfZG'
    'V0YWlsLlFTdG9yYWdlUghzdG9yYWdlcw==');

@$core.Deprecated('Use oneOfQProductDetailResponseDescriptor instead')
const OneOfQProductDetailResponse$json = {
  '1': 'OneOfQProductDetailResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.error.Error', '9': 0, '10': 'error'},
    {'1': 'qproductDetailResponse', '3': 2, '4': 1, '5': 11, '6': '.qproduct_detail.QProductDetailResponse', '9': 0, '10': 'qproductDetailResponse'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `OneOfQProductDetailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneOfQProductDetailResponseDescriptor = $convert.base64Decode(
    'ChtPbmVPZlFQcm9kdWN0RGV0YWlsUmVzcG9uc2USJAoFZXJyb3IYASABKAsyDC5lcnJvci5Fcn'
    'JvckgAUgVlcnJvchJhChZxcHJvZHVjdERldGFpbFJlc3BvbnNlGAIgASgLMicucXByb2R1Y3Rf'
    'ZGV0YWlsLlFQcm9kdWN0RGV0YWlsUmVzcG9uc2VIAFIWcXByb2R1Y3REZXRhaWxSZXNwb25zZU'
    'IKCghyZXNwb25zZQ==');

