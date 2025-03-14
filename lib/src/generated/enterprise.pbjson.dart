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

@$core.Deprecated('Use validityOfferDescriptor instead')
const ValidityOffer$json = {
  '1': 'ValidityOffer',
  '2': [
    {'1': 'validityOfferId', '3': 1, '4': 1, '5': 5, '10': 'validityOfferId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'duration', '3': 3, '4': 1, '5': 5, '10': 'duration'},
  ],
};

/// Descriptor for `ValidityOffer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validityOfferDescriptor = $convert.base64Decode(
    'Cg1WYWxpZGl0eU9mZmVyEigKD3ZhbGlkaXR5T2ZmZXJJZBgBIAEoBVIPdmFsaWRpdHlPZmZlck'
    'lkEhIKBG5hbWUYAiABKAlSBG5hbWUSGgoIZHVyYXRpb24YAyABKAVSCGR1cmF0aW9u');

@$core.Deprecated('Use payConditionDescriptor instead')
const PayCondition$json = {
  '1': 'PayCondition',
  '2': [
    {'1': 'payConditionId', '3': 1, '4': 1, '5': 5, '10': 'payConditionId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'isSunat', '3': 3, '4': 1, '5': 8, '10': 'isSunat'},
  ],
};

/// Descriptor for `PayCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payConditionDescriptor = $convert.base64Decode(
    'CgxQYXlDb25kaXRpb24SJgoOcGF5Q29uZGl0aW9uSWQYASABKAVSDnBheUNvbmRpdGlvbklkEh'
    'IKBG5hbWUYAiABKAlSBG5hbWUSGAoHaXNTdW5hdBgDIAEoCFIHaXNTdW5hdA==');

@$core.Deprecated('Use voucherTypeDescriptor instead')
const VoucherType$json = {
  '1': 'VoucherType',
  '2': [
    {'1': 'voucherTypeId', '3': 1, '4': 1, '5': 5, '10': 'voucherTypeId'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'isDefault', '3': 4, '4': 1, '5': 8, '10': 'isDefault'},
    {'1': 'abbreviation', '3': 5, '4': 1, '5': 9, '10': 'abbreviation'},
    {'1': 'isDni', '3': 6, '4': 1, '5': 8, '10': 'isDni'},
  ],
};

/// Descriptor for `VoucherType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voucherTypeDescriptor = $convert.base64Decode(
    'CgtWb3VjaGVyVHlwZRIkCg12b3VjaGVyVHlwZUlkGAEgASgFUg12b3VjaGVyVHlwZUlkEhIKBG'
    'NvZGUYAiABKAlSBGNvZGUSEgoEbmFtZRgDIAEoCVIEbmFtZRIcCglpc0RlZmF1bHQYBCABKAhS'
    'CWlzRGVmYXVsdBIiCgxhYmJyZXZpYXRpb24YBSABKAlSDGFiYnJldmlhdGlvbhIUCgVpc0RuaR'
    'gGIAEoCFIFaXNEbmk=');

@$core.Deprecated('Use sellerDescriptor instead')
const Seller$json = {
  '1': 'Seller',
  '2': [
    {'1': 'employeeId', '3': 1, '4': 1, '5': 5, '10': 'employeeId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'saleCommissionPercentage', '3': 3, '4': 1, '5': 1, '10': 'saleCommissionPercentage'},
  ],
};

/// Descriptor for `Seller`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sellerDescriptor = $convert.base64Decode(
    'CgZTZWxsZXISHgoKZW1wbG95ZWVJZBgBIAEoBVIKZW1wbG95ZWVJZBISCgRuYW1lGAIgASgJUg'
    'RuYW1lEjoKGHNhbGVDb21taXNzaW9uUGVyY2VudGFnZRgDIAEoAVIYc2FsZUNvbW1pc3Npb25Q'
    'ZXJjZW50YWdl');

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

@$core.Deprecated('Use listValidityOfferResponseDescriptor instead')
const ListValidityOfferResponse$json = {
  '1': 'ListValidityOfferResponse',
  '2': [
    {'1': 'validityOffers', '3': 1, '4': 3, '5': 11, '6': '.enterprise.ValidityOffer', '10': 'validityOffers'},
  ],
};

/// Descriptor for `ListValidityOfferResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listValidityOfferResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0VmFsaWRpdHlPZmZlclJlc3BvbnNlEkEKDnZhbGlkaXR5T2ZmZXJzGAEgAygLMhkuZW'
    '50ZXJwcmlzZS5WYWxpZGl0eU9mZmVyUg52YWxpZGl0eU9mZmVycw==');

@$core.Deprecated('Use listPayConditionResponseDescriptor instead')
const ListPayConditionResponse$json = {
  '1': 'ListPayConditionResponse',
  '2': [
    {'1': 'payConditions', '3': 1, '4': 3, '5': 11, '6': '.enterprise.PayCondition', '10': 'payConditions'},
  ],
};

/// Descriptor for `ListPayConditionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPayConditionResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0UGF5Q29uZGl0aW9uUmVzcG9uc2USPgoNcGF5Q29uZGl0aW9ucxgBIAMoCzIYLmVudG'
    'VycHJpc2UuUGF5Q29uZGl0aW9uUg1wYXlDb25kaXRpb25z');

@$core.Deprecated('Use listVoucherTypeResponseDescriptor instead')
const ListVoucherTypeResponse$json = {
  '1': 'ListVoucherTypeResponse',
  '2': [
    {'1': 'vouchersType', '3': 1, '4': 3, '5': 11, '6': '.enterprise.VoucherType', '10': 'vouchersType'},
  ],
};

/// Descriptor for `ListVoucherTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listVoucherTypeResponseDescriptor = $convert.base64Decode(
    'ChdMaXN0Vm91Y2hlclR5cGVSZXNwb25zZRI7Cgx2b3VjaGVyc1R5cGUYASADKAsyFy5lbnRlcn'
    'ByaXNlLlZvdWNoZXJUeXBlUgx2b3VjaGVyc1R5cGU=');

@$core.Deprecated('Use listSellerResponseDescriptor instead')
const ListSellerResponse$json = {
  '1': 'ListSellerResponse',
  '2': [
    {'1': 'sellers', '3': 1, '4': 3, '5': 11, '6': '.enterprise.Seller', '10': 'sellers'},
  ],
};

/// Descriptor for `ListSellerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSellerResponseDescriptor = $convert.base64Decode(
    'ChJMaXN0U2VsbGVyUmVzcG9uc2USLAoHc2VsbGVycxgBIAMoCzISLmVudGVycHJpc2UuU2VsbG'
    'VyUgdzZWxsZXJz');

@$core.Deprecated('Use dataEnterpriseResponseDescriptor instead')
const DataEnterpriseResponse$json = {
  '1': 'DataEnterpriseResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.error.Error', '10': 'error'},
    {'1': 'listStorageResponse', '3': 2, '4': 1, '5': 11, '6': '.enterprise.ListStorageResponse', '10': 'listStorageResponse'},
    {'1': 'listCategoryResponse', '3': 3, '4': 1, '5': 11, '6': '.enterprise.ListCategoryResponse', '10': 'listCategoryResponse'},
    {'1': 'listSubCategoryResponse', '3': 4, '4': 1, '5': 11, '6': '.enterprise.ListSubCategoryResponse', '10': 'listSubCategoryResponse'},
    {'1': 'listValidityOfferResponse', '3': 5, '4': 1, '5': 11, '6': '.enterprise.ListValidityOfferResponse', '10': 'listValidityOfferResponse'},
    {'1': 'listPayConditionResponse', '3': 6, '4': 1, '5': 11, '6': '.enterprise.ListPayConditionResponse', '10': 'listPayConditionResponse'},
    {'1': 'listVoucherTypeResponse', '3': 7, '4': 1, '5': 11, '6': '.enterprise.ListVoucherTypeResponse', '10': 'listVoucherTypeResponse'},
    {'1': 'defaultClientResponse', '3': 8, '4': 1, '5': 11, '6': '.client.DocumentResponse', '10': 'defaultClientResponse'},
    {'1': 'listSellerResponse', '3': 9, '4': 1, '5': 11, '6': '.enterprise.ListSellerResponse', '10': 'listSellerResponse'},
  ],
};

/// Descriptor for `DataEnterpriseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataEnterpriseResponseDescriptor = $convert.base64Decode(
    'ChZEYXRhRW50ZXJwcmlzZVJlc3BvbnNlEiIKBWVycm9yGAEgASgLMgwuZXJyb3IuRXJyb3JSBW'
    'Vycm9yElEKE2xpc3RTdG9yYWdlUmVzcG9uc2UYAiABKAsyHy5lbnRlcnByaXNlLkxpc3RTdG9y'
    'YWdlUmVzcG9uc2VSE2xpc3RTdG9yYWdlUmVzcG9uc2USVAoUbGlzdENhdGVnb3J5UmVzcG9uc2'
    'UYAyABKAsyIC5lbnRlcnByaXNlLkxpc3RDYXRlZ29yeVJlc3BvbnNlUhRsaXN0Q2F0ZWdvcnlS'
    'ZXNwb25zZRJdChdsaXN0U3ViQ2F0ZWdvcnlSZXNwb25zZRgEIAEoCzIjLmVudGVycHJpc2UuTG'
    'lzdFN1YkNhdGVnb3J5UmVzcG9uc2VSF2xpc3RTdWJDYXRlZ29yeVJlc3BvbnNlEmMKGWxpc3RW'
    'YWxpZGl0eU9mZmVyUmVzcG9uc2UYBSABKAsyJS5lbnRlcnByaXNlLkxpc3RWYWxpZGl0eU9mZm'
    'VyUmVzcG9uc2VSGWxpc3RWYWxpZGl0eU9mZmVyUmVzcG9uc2USYAoYbGlzdFBheUNvbmRpdGlv'
    'blJlc3BvbnNlGAYgASgLMiQuZW50ZXJwcmlzZS5MaXN0UGF5Q29uZGl0aW9uUmVzcG9uc2VSGG'
    'xpc3RQYXlDb25kaXRpb25SZXNwb25zZRJdChdsaXN0Vm91Y2hlclR5cGVSZXNwb25zZRgHIAEo'
    'CzIjLmVudGVycHJpc2UuTGlzdFZvdWNoZXJUeXBlUmVzcG9uc2VSF2xpc3RWb3VjaGVyVHlwZV'
    'Jlc3BvbnNlEk4KFWRlZmF1bHRDbGllbnRSZXNwb25zZRgIIAEoCzIYLmNsaWVudC5Eb2N1bWVu'
    'dFJlc3BvbnNlUhVkZWZhdWx0Q2xpZW50UmVzcG9uc2USTgoSbGlzdFNlbGxlclJlc3BvbnNlGA'
    'kgASgLMh4uZW50ZXJwcmlzZS5MaXN0U2VsbGVyUmVzcG9uc2VSEmxpc3RTZWxsZXJSZXNwb25z'
    'ZQ==');

