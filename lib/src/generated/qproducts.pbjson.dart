//
//  Generated code. Do not modify.
//  source: qproducts.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use qProductRequestDescriptor instead')
const QProductRequest$json = {
  '1': 'QProductRequest',
  '2': [
    {'1': 'companyRuc', '3': 1, '4': 1, '5': 9, '10': 'companyRuc'},
    {'1': 'filterType', '3': 2, '4': 1, '5': 5, '10': 'filterType'},
    {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
    {'1': 'branchId', '3': 4, '4': 1, '5': 5, '10': 'branchId'},
    {'1': 'storageId', '3': 5, '4': 1, '5': 3, '10': 'storageId'},
  ],
};

/// Descriptor for `QProductRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qProductRequestDescriptor = $convert.base64Decode(
    'Cg9RUHJvZHVjdFJlcXVlc3QSHgoKY29tcGFueVJ1YxgBIAEoCVIKY29tcGFueVJ1YxIeCgpmaW'
    'x0ZXJUeXBlGAIgASgFUgpmaWx0ZXJUeXBlEhIKBHR5cGUYAyABKAVSBHR5cGUSGgoIYnJhbmNo'
    'SWQYBCABKAVSCGJyYW5jaElkEhwKCXN0b3JhZ2VJZBgFIAEoA1IJc3RvcmFnZUlk');

@$core.Deprecated('Use qProductDescriptor instead')
const QProduct$json = {
  '1': 'QProduct',
  '2': [
    {'1': 'productId', '3': 1, '4': 1, '5': 3, '10': 'productId'},
    {'1': 'barCodeOrName', '3': 2, '4': 1, '5': 9, '10': 'barCodeOrName'},
    {'1': 'unitPrice', '3': 3, '4': 1, '5': 1, '10': 'unitPrice'},
    {'1': 'taxAmount', '3': 4, '4': 1, '5': 1, '10': 'taxAmount'},
    {'1': 'totalPrice', '3': 5, '4': 1, '5': 1, '10': 'totalPrice'},
    {'1': 'isFormulations', '3': 6, '4': 1, '5': 8, '10': 'isFormulations'},
    {'1': 'unitOfMeasure', '3': 7, '4': 1, '5': 9, '10': 'unitOfMeasure'},
    {'1': 'typeEffect', '3': 8, '4': 1, '5': 5, '10': 'typeEffect'},
    {'1': 'buyPrice', '3': 9, '4': 1, '5': 1, '10': 'buyPrice'},
    {'1': 'sunatCode', '3': 10, '4': 1, '5': 9, '10': 'sunatCode'},
    {'1': 'name', '3': 11, '4': 1, '5': 9, '10': 'name'},
    {'1': 'clientCode', '3': 12, '4': 1, '5': 9, '10': 'clientCode'},
    {'1': 'isTaxtEffect', '3': 13, '4': 1, '5': 8, '10': 'isTaxtEffect'},
    {'1': 'image', '3': 14, '4': 1, '5': 9, '10': 'image'},
    {'1': 'barCode', '3': 15, '4': 1, '5': 9, '10': 'barCode'},
    {'1': 'expirationDateLot', '3': 16, '4': 1, '5': 9, '10': 'expirationDateLot'},
    {'1': 'curve', '3': 17, '4': 1, '5': 9, '10': 'curve'},
    {'1': 'category', '3': 18, '4': 1, '5': 9, '10': 'category'},
    {'1': 'storagesJson', '3': 19, '4': 1, '5': 9, '10': 'storagesJson'},
  ],
};

/// Descriptor for `QProduct`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qProductDescriptor = $convert.base64Decode(
    'CghRUHJvZHVjdBIcCglwcm9kdWN0SWQYASABKANSCXByb2R1Y3RJZBIkCg1iYXJDb2RlT3JOYW'
    '1lGAIgASgJUg1iYXJDb2RlT3JOYW1lEhwKCXVuaXRQcmljZRgDIAEoAVIJdW5pdFByaWNlEhwK'
    'CXRheEFtb3VudBgEIAEoAVIJdGF4QW1vdW50Eh4KCnRvdGFsUHJpY2UYBSABKAFSCnRvdGFsUH'
    'JpY2USJgoOaXNGb3JtdWxhdGlvbnMYBiABKAhSDmlzRm9ybXVsYXRpb25zEiQKDXVuaXRPZk1l'
    'YXN1cmUYByABKAlSDXVuaXRPZk1lYXN1cmUSHgoKdHlwZUVmZmVjdBgIIAEoBVIKdHlwZUVmZm'
    'VjdBIaCghidXlQcmljZRgJIAEoAVIIYnV5UHJpY2USHAoJc3VuYXRDb2RlGAogASgJUglzdW5h'
    'dENvZGUSEgoEbmFtZRgLIAEoCVIEbmFtZRIeCgpjbGllbnRDb2RlGAwgASgJUgpjbGllbnRDb2'
    'RlEiIKDGlzVGF4dEVmZmVjdBgNIAEoCFIMaXNUYXh0RWZmZWN0EhQKBWltYWdlGA4gASgJUgVp'
    'bWFnZRIYCgdiYXJDb2RlGA8gASgJUgdiYXJDb2RlEiwKEWV4cGlyYXRpb25EYXRlTG90GBAgAS'
    'gJUhFleHBpcmF0aW9uRGF0ZUxvdBIUCgVjdXJ2ZRgRIAEoCVIFY3VydmUSGgoIY2F0ZWdvcnkY'
    'EiABKAlSCGNhdGVnb3J5EiIKDHN0b3JhZ2VzSnNvbhgTIAEoCVIMc3RvcmFnZXNKc29u');

@$core.Deprecated('Use listQProductsResponseDescriptor instead')
const ListQProductsResponse$json = {
  '1': 'ListQProductsResponse',
  '2': [
    {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.qproducts.QProduct', '10': 'products'},
  ],
};

/// Descriptor for `ListQProductsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listQProductsResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0UVByb2R1Y3RzUmVzcG9uc2USLwoIcHJvZHVjdHMYASADKAsyEy5xcHJvZHVjdHMuUV'
    'Byb2R1Y3RSCHByb2R1Y3Rz');

@$core.Deprecated('Use oneOfQProductsResponseDescriptor instead')
const OneOfQProductsResponse$json = {
  '1': 'OneOfQProductsResponse',
  '2': [
    {'1': 'listQProductsResponse', '3': 1, '4': 1, '5': 11, '6': '.qproducts.ListQProductsResponse', '9': 0, '10': 'listQProductsResponse'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.error.Error', '9': 0, '10': 'error'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `OneOfQProductsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneOfQProductsResponseDescriptor = $convert.base64Decode(
    'ChZPbmVPZlFQcm9kdWN0c1Jlc3BvbnNlElgKFWxpc3RRUHJvZHVjdHNSZXNwb25zZRgBIAEoCz'
    'IgLnFwcm9kdWN0cy5MaXN0UVByb2R1Y3RzUmVzcG9uc2VIAFIVbGlzdFFQcm9kdWN0c1Jlc3Bv'
    'bnNlEiQKBWVycm9yGAIgASgLMgwuZXJyb3IuRXJyb3JIAFIFZXJyb3JCCgoIcmVzcG9uc2U=');

