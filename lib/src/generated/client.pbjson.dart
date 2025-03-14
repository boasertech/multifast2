//
//  Generated code. Do not modify.
//  source: client.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use documentRequestDescriptor instead')
const DocumentRequest$json = {
  '1': 'DocumentRequest',
  '2': [
    {'1': 'document', '3': 1, '4': 1, '5': 9, '10': 'document'},
    {'1': 'companyRuc', '3': 2, '4': 1, '5': 9, '10': 'companyRuc'},
    {'1': 'codeDocument', '3': 3, '4': 1, '5': 9, '10': 'codeDocument'},
    {'1': 'clientId', '3': 4, '4': 1, '5': 3, '10': 'clientId'},
  ],
};

/// Descriptor for `DocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentRequestDescriptor = $convert.base64Decode(
    'Cg9Eb2N1bWVudFJlcXVlc3QSGgoIZG9jdW1lbnQYASABKAlSCGRvY3VtZW50Eh4KCmNvbXBhbn'
    'lSdWMYAiABKAlSCmNvbXBhbnlSdWMSIgoMY29kZURvY3VtZW50GAMgASgJUgxjb2RlRG9jdW1l'
    'bnQSGgoIY2xpZW50SWQYBCABKANSCGNsaWVudElk');

@$core.Deprecated('Use documentResponseDescriptor instead')
const DocumentResponse$json = {
  '1': 'DocumentResponse',
  '2': [
    {'1': 'document', '3': 1, '4': 1, '5': 9, '10': 'document'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'documentTypeCode', '3': 3, '4': 1, '5': 9, '10': 'documentTypeCode'},
    {'1': 'principalPhone', '3': 4, '4': 1, '5': 9, '10': 'principalPhone'},
    {'1': 'secondPhone', '3': 5, '4': 1, '5': 9, '10': 'secondPhone'},
    {'1': 'gender', '3': 6, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'birthDate', '3': 7, '4': 1, '5': 9, '10': 'birthDate'},
    {'1': 'clientId', '3': 8, '4': 1, '5': 3, '10': 'clientId'},
  ],
};

/// Descriptor for `DocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentResponseDescriptor = $convert.base64Decode(
    'ChBEb2N1bWVudFJlc3BvbnNlEhoKCGRvY3VtZW50GAEgASgJUghkb2N1bWVudBISCgRuYW1lGA'
    'IgASgJUgRuYW1lEioKEGRvY3VtZW50VHlwZUNvZGUYAyABKAlSEGRvY3VtZW50VHlwZUNvZGUS'
    'JgoOcHJpbmNpcGFsUGhvbmUYBCABKAlSDnByaW5jaXBhbFBob25lEiAKC3NlY29uZFBob25lGA'
    'UgASgJUgtzZWNvbmRQaG9uZRIWCgZnZW5kZXIYBiABKAlSBmdlbmRlchIcCgliaXJ0aERhdGUY'
    'ByABKAlSCWJpcnRoRGF0ZRIaCghjbGllbnRJZBgIIAEoA1IIY2xpZW50SWQ=');

@$core.Deprecated('Use oneOfDocumentResponseDescriptor instead')
const OneOfDocumentResponse$json = {
  '1': 'OneOfDocumentResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.error.Error', '9': 0, '10': 'error'},
    {'1': 'documentResponse', '3': 2, '4': 1, '5': 11, '6': '.client.DocumentResponse', '9': 0, '10': 'documentResponse'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `OneOfDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneOfDocumentResponseDescriptor = $convert.base64Decode(
    'ChVPbmVPZkRvY3VtZW50UmVzcG9uc2USJAoFZXJyb3IYASABKAsyDC5lcnJvci5FcnJvckgAUg'
    'VlcnJvchJGChBkb2N1bWVudFJlc3BvbnNlGAIgASgLMhguY2xpZW50LkRvY3VtZW50UmVzcG9u'
    'c2VIAFIQZG9jdW1lbnRSZXNwb25zZUIKCghyZXNwb25zZQ==');

