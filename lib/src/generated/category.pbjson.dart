//
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use categoryDescriptor instead')
const Category$json = {
  '1': 'Category',
  '2': [
    {'1': 'categoryId', '3': 1, '4': 1, '5': 3, '10': 'categoryId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Category`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryDescriptor = $convert.base64Decode(
    'CghDYXRlZ29yeRIeCgpjYXRlZ29yeUlkGAEgASgDUgpjYXRlZ29yeUlkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWU=');

@$core.Deprecated('Use subCategoryDescriptor instead')
const SubCategory$json = {
  '1': 'SubCategory',
  '2': [
    {'1': 'subCategoryId', '3': 1, '4': 1, '5': 3, '10': 'subCategoryId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'categoryId', '3': 3, '4': 1, '5': 3, '10': 'categoryId'},
  ],
};

/// Descriptor for `SubCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subCategoryDescriptor = $convert.base64Decode(
    'CgtTdWJDYXRlZ29yeRIkCg1zdWJDYXRlZ29yeUlkGAEgASgDUg1zdWJDYXRlZ29yeUlkEhIKBG'
    '5hbWUYAiABKAlSBG5hbWUSHgoKY2F0ZWdvcnlJZBgDIAEoA1IKY2F0ZWdvcnlJZA==');

