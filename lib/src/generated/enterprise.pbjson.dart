//
//  Generated code. Do not modify.
//  source: enterprise.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use globalRequestDescriptor instead')
const GlobalRequest$json = {
  '1': 'GlobalRequest',
  '2': [
    {'1': 'isGlobal', '3': 1, '4': 1, '5': 8, '10': 'isGlobal'},
  ],
};

/// Descriptor for `GlobalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List globalRequestDescriptor = $convert.base64Decode(
    'Cg1HbG9iYWxSZXF1ZXN0EhoKCGlzR2xvYmFsGAEgASgIUghpc0dsb2JhbA==');

@$core.Deprecated('Use enterpriseRequestDescriptor instead')
const EnterpriseRequest$json = {
  '1': 'EnterpriseRequest',
  '2': [
    {'1': 'companyRuc', '3': 1, '4': 1, '5': 9, '10': 'companyRuc'},
    {'1': 'branchId', '3': 2, '4': 1, '5': 3, '10': 'branchId'},
  ],
};

/// Descriptor for `EnterpriseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enterpriseRequestDescriptor = $convert.base64Decode(
    'ChFFbnRlcnByaXNlUmVxdWVzdBIeCgpjb21wYW55UnVjGAEgASgJUgpjb21wYW55UnVjEhoKCG'
    'JyYW5jaElkGAIgASgDUghicmFuY2hJZA==');

@$core.Deprecated('Use documentTypeDescriptor instead')
const DocumentType$json = {
  '1': 'DocumentType',
  '2': [
    {'1': 'documentTypeId', '3': 1, '4': 1, '5': 3, '10': 'documentTypeId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `DocumentType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentTypeDescriptor = $convert.base64Decode(
    'CgxEb2N1bWVudFR5cGUSJgoOZG9jdW1lbnRUeXBlSWQYASABKANSDmRvY3VtZW50VHlwZUlkEh'
    'IKBG5hbWUYAiABKAlSBG5hbWU=');

@$core.Deprecated('Use listDocumentTypeResponseDescriptor instead')
const ListDocumentTypeResponse$json = {
  '1': 'ListDocumentTypeResponse',
  '2': [
    {'1': 'documentsType', '3': 1, '4': 3, '5': 11, '6': '.enterprise.DocumentType', '10': 'documentsType'},
  ],
};

/// Descriptor for `ListDocumentTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDocumentTypeResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0RG9jdW1lbnRUeXBlUmVzcG9uc2USPgoNZG9jdW1lbnRzVHlwZRgBIAMoCzIYLmVudG'
    'VycHJpc2UuRG9jdW1lbnRUeXBlUg1kb2N1bWVudHNUeXBl');

@$core.Deprecated('Use listStorageResponseDescriptor instead')
const ListStorageResponse$json = {
  '1': 'ListStorageResponse',
  '2': [
    {'1': 'storages', '3': 1, '4': 3, '5': 11, '6': '.storage.Storage', '10': 'storages'},
  ],
};

/// Descriptor for `ListStorageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStorageResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0U3RvcmFnZVJlc3BvbnNlEiwKCHN0b3JhZ2VzGAEgAygLMhAuc3RvcmFnZS5TdG9yYW'
    'dlUghzdG9yYWdlcw==');

@$core.Deprecated('Use listCategoryResponseDescriptor instead')
const ListCategoryResponse$json = {
  '1': 'ListCategoryResponse',
  '2': [
    {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.category.Category', '10': 'categories'},
  ],
};

/// Descriptor for `ListCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCategoryResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0Q2F0ZWdvcnlSZXNwb25zZRIyCgpjYXRlZ29yaWVzGAEgAygLMhIuY2F0ZWdvcnkuQ2'
    'F0ZWdvcnlSCmNhdGVnb3JpZXM=');

@$core.Deprecated('Use listSubCategoryResponseDescriptor instead')
const ListSubCategoryResponse$json = {
  '1': 'ListSubCategoryResponse',
  '2': [
    {'1': 'subCategories', '3': 1, '4': 3, '5': 11, '6': '.category.SubCategory', '10': 'subCategories'},
  ],
};

/// Descriptor for `ListSubCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSubCategoryResponseDescriptor = $convert.base64Decode(
    'ChdMaXN0U3ViQ2F0ZWdvcnlSZXNwb25zZRI7Cg1zdWJDYXRlZ29yaWVzGAEgAygLMhUuY2F0ZW'
    'dvcnkuU3ViQ2F0ZWdvcnlSDXN1YkNhdGVnb3JpZXM=');

@$core.Deprecated('Use dataEnterpriseResponseDescriptor instead')
const DataEnterpriseResponse$json = {
  '1': 'DataEnterpriseResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.error.Error', '10': 'error'},
    {'1': 'listStorageResponse', '3': 2, '4': 1, '5': 11, '6': '.enterprise.ListStorageResponse', '10': 'listStorageResponse'},
    {'1': 'listCategoryResponse', '3': 3, '4': 1, '5': 11, '6': '.enterprise.ListCategoryResponse', '10': 'listCategoryResponse'},
    {'1': 'listSubCategoryResponse', '3': 4, '4': 1, '5': 11, '6': '.enterprise.ListSubCategoryResponse', '10': 'listSubCategoryResponse'},
  ],
};

/// Descriptor for `DataEnterpriseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataEnterpriseResponseDescriptor = $convert.base64Decode(
    'ChZEYXRhRW50ZXJwcmlzZVJlc3BvbnNlEiIKBWVycm9yGAEgASgLMgwuZXJyb3IuRXJyb3JSBW'
    'Vycm9yElEKE2xpc3RTdG9yYWdlUmVzcG9uc2UYAiABKAsyHy5lbnRlcnByaXNlLkxpc3RTdG9y'
    'YWdlUmVzcG9uc2VSE2xpc3RTdG9yYWdlUmVzcG9uc2USVAoUbGlzdENhdGVnb3J5UmVzcG9uc2'
    'UYAyABKAsyIC5lbnRlcnByaXNlLkxpc3RDYXRlZ29yeVJlc3BvbnNlUhRsaXN0Q2F0ZWdvcnlS'
    'ZXNwb25zZRJdChdsaXN0U3ViQ2F0ZWdvcnlSZXNwb25zZRgEIAEoCzIjLmVudGVycHJpc2UuTG'
    'lzdFN1YkNhdGVnb3J5UmVzcG9uc2VSF2xpc3RTdWJDYXRlZ29yeVJlc3BvbnNl');

