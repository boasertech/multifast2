//
//  Generated code. Do not modify.
//  source: products.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use propertyDescriptor instead')
const Property$json = {
  '1': 'Property',
  '2': [
    {'1': 'propertyId', '3': 1, '4': 1, '5': 3, '10': 'propertyId'},
    {'1': 'propertyName', '3': 2, '4': 1, '5': 9, '10': 'propertyName'},
    {'1': 'isDefault', '3': 3, '4': 1, '5': 8, '10': 'isDefault'},
    {'1': 'additionalPrice', '3': 4, '4': 1, '5': 1, '10': 'additionalPrice'},
    {'1': 'isProduct', '3': 5, '4': 1, '5': 8, '10': 'isProduct'},
    {'1': 'productId', '3': 6, '4': 1, '5': 3, '10': 'productId'},
  ],
};

/// Descriptor for `Property`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyDescriptor = $convert.base64Decode(
    'CghQcm9wZXJ0eRIeCgpwcm9wZXJ0eUlkGAEgASgDUgpwcm9wZXJ0eUlkEiIKDHByb3BlcnR5Tm'
    'FtZRgCIAEoCVIMcHJvcGVydHlOYW1lEhwKCWlzRGVmYXVsdBgDIAEoCFIJaXNEZWZhdWx0EigK'
    'D2FkZGl0aW9uYWxQcmljZRgEIAEoAVIPYWRkaXRpb25hbFByaWNlEhwKCWlzUHJvZHVjdBgFIA'
    'EoCFIJaXNQcm9kdWN0EhwKCXByb2R1Y3RJZBgGIAEoA1IJcHJvZHVjdElk');

@$core.Deprecated('Use operatorDescriptor instead')
const Operator$json = {
  '1': 'Operator',
  '2': [
    {'1': 'operatorId', '3': 1, '4': 1, '5': 3, '10': 'operatorId'},
    {'1': 'operatorName', '3': 2, '4': 1, '5': 9, '10': 'operatorName'},
    {'1': 'selection', '3': 3, '4': 1, '5': 5, '10': 'selection'},
    {'1': 'properties', '3': 4, '4': 3, '5': 11, '6': '.products.Property', '10': 'properties'},
  ],
};

/// Descriptor for `Operator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operatorDescriptor = $convert.base64Decode(
    'CghPcGVyYXRvchIeCgpvcGVyYXRvcklkGAEgASgDUgpvcGVyYXRvcklkEiIKDG9wZXJhdG9yTm'
    'FtZRgCIAEoCVIMb3BlcmF0b3JOYW1lEhwKCXNlbGVjdGlvbhgDIAEoBVIJc2VsZWN0aW9uEjIK'
    'CnByb3BlcnRpZXMYBCADKAsyEi5wcm9kdWN0cy5Qcm9wZXJ0eVIKcHJvcGVydGllcw==');

@$core.Deprecated('Use productDescriptor instead')
const Product$json = {
  '1': 'Product',
  '2': [
    {'1': 'productId', '3': 1, '4': 1, '5': 3, '10': 'productId'},
    {'1': 'productName', '3': 2, '4': 1, '5': 9, '10': 'productName'},
    {'1': 'productImage', '3': 3, '4': 1, '5': 9, '10': 'productImage'},
    {'1': 'unitPrice', '3': 4, '4': 1, '5': 1, '10': 'unitPrice'},
    {'1': 'categoryId', '3': 5, '4': 1, '5': 3, '10': 'categoryId'},
    {'1': 'subCategoryId', '3': 6, '4': 1, '5': 3, '10': 'subCategoryId'},
    {'1': 'subCategoryName', '3': 7, '4': 1, '5': 9, '10': 'subCategoryName'},
    {'1': 'isCombo', '3': 8, '4': 1, '5': 8, '10': 'isCombo'},
    {'1': 'minSelection', '3': 9, '4': 1, '5': 5, '10': 'minSelection'},
    {'1': 'maxSelection', '3': 10, '4': 1, '5': 5, '10': 'maxSelection'},
    {'1': 'allowDuplicateItem', '3': 11, '4': 1, '5': 8, '10': 'allowDuplicateItem'},
    {'1': 'taxTypeId', '3': 12, '4': 1, '5': 3, '10': 'taxTypeId'},
    {'1': 'taxAmount', '3': 13, '4': 1, '5': 1, '10': 'taxAmount'},
    {'1': 'unitOfMeasure', '3': 14, '4': 1, '5': 9, '10': 'unitOfMeasure'},
    {'1': 'operators', '3': 15, '4': 3, '5': 11, '6': '.products.Operator', '10': 'operators'},
  ],
};

/// Descriptor for `Product`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productDescriptor = $convert.base64Decode(
    'CgdQcm9kdWN0EhwKCXByb2R1Y3RJZBgBIAEoA1IJcHJvZHVjdElkEiAKC3Byb2R1Y3ROYW1lGA'
    'IgASgJUgtwcm9kdWN0TmFtZRIiCgxwcm9kdWN0SW1hZ2UYAyABKAlSDHByb2R1Y3RJbWFnZRIc'
    'Cgl1bml0UHJpY2UYBCABKAFSCXVuaXRQcmljZRIeCgpjYXRlZ29yeUlkGAUgASgDUgpjYXRlZ2'
    '9yeUlkEiQKDXN1YkNhdGVnb3J5SWQYBiABKANSDXN1YkNhdGVnb3J5SWQSKAoPc3ViQ2F0ZWdv'
    'cnlOYW1lGAcgASgJUg9zdWJDYXRlZ29yeU5hbWUSGAoHaXNDb21ibxgIIAEoCFIHaXNDb21ibx'
    'IiCgxtaW5TZWxlY3Rpb24YCSABKAVSDG1pblNlbGVjdGlvbhIiCgxtYXhTZWxlY3Rpb24YCiAB'
    'KAVSDG1heFNlbGVjdGlvbhIuChJhbGxvd0R1cGxpY2F0ZUl0ZW0YCyABKAhSEmFsbG93RHVwbG'
    'ljYXRlSXRlbRIcCgl0YXhUeXBlSWQYDCABKANSCXRheFR5cGVJZBIcCgl0YXhBbW91bnQYDSAB'
    'KAFSCXRheEFtb3VudBIkCg11bml0T2ZNZWFzdXJlGA4gASgJUg11bml0T2ZNZWFzdXJlEjAKCW'
    '9wZXJhdG9ycxgPIAMoCzISLnByb2R1Y3RzLk9wZXJhdG9yUglvcGVyYXRvcnM=');

@$core.Deprecated('Use requestProductsDescriptor instead')
const RequestProducts$json = {
  '1': 'RequestProducts',
  '2': [
    {'1': 'companyRuc', '3': 1, '4': 1, '5': 9, '10': 'companyRuc'},
    {'1': 'branchId', '3': 2, '4': 1, '5': 3, '10': 'branchId'},
  ],
};

/// Descriptor for `RequestProducts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestProductsDescriptor = $convert.base64Decode(
    'Cg9SZXF1ZXN0UHJvZHVjdHMSHgoKY29tcGFueVJ1YxgBIAEoCVIKY29tcGFueVJ1YxIaCghicm'
    'FuY2hJZBgCIAEoA1IIYnJhbmNoSWQ=');

@$core.Deprecated('Use productListDescriptor instead')
const ProductList$json = {
  '1': 'ProductList',
  '2': [
    {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.products.Product', '10': 'products'},
  ],
};

/// Descriptor for `ProductList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productListDescriptor = $convert.base64Decode(
    'CgtQcm9kdWN0TGlzdBItCghwcm9kdWN0cxgBIAMoCzIRLnByb2R1Y3RzLlByb2R1Y3RSCHByb2'
    'R1Y3Rz');

