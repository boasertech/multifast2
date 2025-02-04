//
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use messageRequestDescriptor instead')
const MessageRequest$json = {
  '1': 'MessageRequest',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageRequestDescriptor = $convert.base64Decode(
    'Cg5NZXNzYWdlUmVxdWVzdBISCgR1c2VyGAEgASgJUgR1c2VyEhgKB21lc3NhZ2UYAiABKAlSB2'
    '1lc3NhZ2U=');

@$core.Deprecated('Use messageReplyDescriptor instead')
const MessageReply$json = {
  '1': 'MessageReply',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

/// Descriptor for `MessageReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageReplyDescriptor = $convert.base64Decode(
    'CgxNZXNzYWdlUmVwbHkSEgoEdXNlchgBIAEoCVIEdXNlchIYCgdtZXNzYWdlGAIgASgJUgdtZX'
    'NzYWdlEhwKCXRpbWVzdGFtcBgDIAEoCVIJdGltZXN0YW1w');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

