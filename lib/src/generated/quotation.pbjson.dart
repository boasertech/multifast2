//
//  Generated code. Do not modify.
//  source: quotation.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use quotationRequestDescriptor instead')
const QuotationRequest$json = {
  '1': 'QuotationRequest',
  '2': [
    {'1': 'companyRuc', '3': 1, '4': 1, '5': 9, '10': 'companyRuc'},
    {'1': 'emisionDate', '3': 2, '4': 1, '5': 9, '10': 'emisionDate'},
    {'1': 'validityId', '3': 3, '4': 1, '5': 3, '10': 'validityId'},
    {'1': 'validityDuration', '3': 4, '4': 1, '5': 5, '10': 'validityDuration'},
    {'1': 'expirationDate', '3': 5, '4': 1, '5': 9, '10': 'expirationDate'},
    {'1': 'coin', '3': 6, '4': 1, '5': 9, '10': 'coin'},
    {'1': 'changeType', '3': 7, '4': 1, '5': 1, '10': 'changeType'},
    {'1': 'clientId', '3': 8, '4': 1, '5': 3, '10': 'clientId'},
    {'1': 'clientTypeDocument', '3': 9, '4': 1, '5': 9, '10': 'clientTypeDocument'},
    {'1': 'clientDocument', '3': 10, '4': 1, '5': 9, '10': 'clientDocument'},
    {'1': 'clientName', '3': 11, '4': 1, '5': 9, '10': 'clientName'},
    {'1': 'clientEmail', '3': 12, '4': 1, '5': 9, '10': 'clientEmail'},
    {'1': 'clientLocation', '3': 13, '4': 1, '5': 9, '10': 'clientLocation'},
    {'1': 'paymentConditionId', '3': 14, '4': 1, '5': 3, '10': 'paymentConditionId'},
    {'1': 'observations', '3': 15, '4': 1, '5': 9, '10': 'observations'},
    {'1': 'userId', '3': 16, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'operationType', '3': 17, '4': 1, '5': 5, '10': 'operationType'},
    {'1': 'operationCode', '3': 18, '4': 1, '5': 9, '10': 'operationCode'},
    {'1': 'totalWords', '3': 19, '4': 1, '5': 9, '10': 'totalWords'},
    {'1': 'totalSub', '3': 20, '4': 1, '5': 1, '10': 'totalSub'},
    {'1': 'tax', '3': 21, '4': 1, '5': 1, '10': 'tax'},
    {'1': 'rounding', '3': 22, '4': 1, '5': 1, '10': 'rounding'},
    {'1': 'total', '3': 23, '4': 1, '5': 1, '10': 'total'},
    {'1': 'discount', '3': 24, '4': 1, '5': 1, '10': 'discount'},
    {'1': 'discountWithOutTax', '3': 25, '4': 1, '5': 1, '10': 'discountWithOutTax'},
    {'1': 'branchId', '3': 26, '4': 1, '5': 3, '10': 'branchId'},
    {'1': 'documentType', '3': 27, '4': 1, '5': 9, '10': 'documentType'},
    {'1': 'weight', '3': 28, '4': 1, '5': 1, '10': 'weight'},
    {'1': 'seller', '3': 29, '4': 1, '5': 9, '10': 'seller'},
    {'1': 'formatId', '3': 30, '4': 1, '5': 3, '10': 'formatId'},
    {'1': 'outputNote', '3': 31, '4': 1, '5': 8, '10': 'outputNote'},
    {'1': 'storageId', '3': 32, '4': 1, '5': 3, '10': 'storageId'},
    {'1': 'quotationTypeDocumentId', '3': 33, '4': 1, '5': 3, '10': 'quotationTypeDocumentId'},
    {'1': 'typeId', '3': 34, '4': 1, '5': 5, '10': 'typeId'},
    {'1': 'zoneId', '3': 35, '4': 1, '5': 3, '10': 'zoneId'},
    {'1': 'deliveryVehicle', '3': 36, '4': 1, '5': 3, '10': 'deliveryVehicle'},
    {'1': 'deliveryDate', '3': 37, '4': 1, '5': 9, '10': 'deliveryDate'},
    {'1': 'employeeId', '3': 38, '4': 1, '5': 3, '10': 'employeeId'},
    {'1': 'branchSaleId', '3': 39, '4': 1, '5': 3, '10': 'branchSaleId'},
    {'1': 'emisorRuc', '3': 40, '4': 1, '5': 9, '10': 'emisorRuc'},
    {'1': 'serie', '3': 41, '4': 1, '5': 9, '10': 'serie'},
    {'1': 'documentTypeCode', '3': 42, '4': 1, '5': 9, '10': 'documentTypeCode'},
    {'1': 'globalDiscount', '3': 43, '4': 1, '5': 1, '10': 'globalDiscount'},
    {'1': 'responsible', '3': 44, '4': 1, '5': 9, '10': 'responsible'},
    {'1': 'shipping', '3': 45, '4': 1, '5': 9, '10': 'shipping'},
    {'1': 'supervisorRequesting', '3': 46, '4': 1, '5': 9, '10': 'supervisorRequesting'},
    {'1': 'warranty', '3': 47, '4': 1, '5': 9, '10': 'warranty'},
    {'1': 'sellAmount', '3': 48, '4': 1, '5': 1, '10': 'sellAmount'},
    {'1': 'sellBalance', '3': 49, '4': 1, '5': 1, '10': 'sellBalance'},
    {'1': 'onlineServiceTypeid', '3': 50, '4': 1, '5': 3, '10': 'onlineServiceTypeid'},
    {'1': 'modeServiceId', '3': 51, '4': 1, '5': 3, '10': 'modeServiceId'},
    {'1': 'sellPlace', '3': 52, '4': 1, '5': 3, '10': 'sellPlace'},
    {'1': 'sellerCommissionSale', '3': 53, '4': 1, '5': 1, '10': 'sellerCommissionSale'},
    {'1': 'taxApplied', '3': 54, '4': 1, '5': 1, '10': 'taxApplied'},
    {'1': 'taxUnitApplied', '3': 55, '4': 1, '5': 1, '10': 'taxUnitApplied'},
    {'1': 'isTransfer', '3': 56, '4': 1, '5': 8, '10': 'isTransfer'},
    {'1': 'storageDestinationId', '3': 57, '4': 1, '5': 3, '10': 'storageDestinationId'},
    {'1': 'isCreditSumulation', '3': 58, '4': 1, '5': 8, '10': 'isCreditSumulation'},
    {'1': 'cash', '3': 59, '4': 1, '5': 1, '10': 'cash'},
    {'1': 'changeCash', '3': 60, '4': 1, '5': 1, '10': 'changeCash'},
    {'1': 'periodImportDate', '3': 61, '4': 1, '5': 9, '10': 'periodImportDate'},
    {'1': 'note', '3': 62, '4': 1, '5': 9, '10': 'note'},
    {'1': 'json', '3': 63, '4': 1, '5': 9, '10': 'json'},
    {'1': 'freeAmount', '3': 64, '4': 1, '5': 1, '10': 'freeAmount'},
    {'1': 'salesTax', '3': 65, '4': 1, '5': 1, '10': 'salesTax'},
    {'1': 'clientPhone', '3': 66, '4': 1, '5': 9, '10': 'clientPhone'},
    {'1': 'dateId', '3': 67, '4': 1, '5': 3, '10': 'dateId'},
    {'1': 'plate', '3': 68, '4': 1, '5': 9, '10': 'plate'},
    {'1': 'paymentConditionRestaurant', '3': 69, '4': 1, '5': 5, '10': 'paymentConditionRestaurant'},
    {'1': 'vehicleType', '3': 70, '4': 1, '5': 5, '10': 'vehicleType'},
    {'1': 'counterType', '3': 71, '4': 1, '5': 5, '10': 'counterType'},
    {'1': 'restaurantChannel', '3': 72, '4': 1, '5': 9, '10': 'restaurantChannel'},
    {'1': 'restaurantWaiter', '3': 73, '4': 1, '5': 9, '10': 'restaurantWaiter'},
    {'1': 'cardDetail', '3': 74, '4': 1, '5': 9, '10': 'cardDetail'},
    {'1': 'items', '3': 75, '4': 3, '5': 11, '6': '.quotation.QuotationDetail', '10': 'items'},
  ],
};

/// Descriptor for `QuotationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quotationRequestDescriptor = $convert.base64Decode(
    'ChBRdW90YXRpb25SZXF1ZXN0Eh4KCmNvbXBhbnlSdWMYASABKAlSCmNvbXBhbnlSdWMSIAoLZW'
    '1pc2lvbkRhdGUYAiABKAlSC2VtaXNpb25EYXRlEh4KCnZhbGlkaXR5SWQYAyABKANSCnZhbGlk'
    'aXR5SWQSKgoQdmFsaWRpdHlEdXJhdGlvbhgEIAEoBVIQdmFsaWRpdHlEdXJhdGlvbhImCg5leH'
    'BpcmF0aW9uRGF0ZRgFIAEoCVIOZXhwaXJhdGlvbkRhdGUSEgoEY29pbhgGIAEoCVIEY29pbhIe'
    'CgpjaGFuZ2VUeXBlGAcgASgBUgpjaGFuZ2VUeXBlEhoKCGNsaWVudElkGAggASgDUghjbGllbn'
    'RJZBIuChJjbGllbnRUeXBlRG9jdW1lbnQYCSABKAlSEmNsaWVudFR5cGVEb2N1bWVudBImCg5j'
    'bGllbnREb2N1bWVudBgKIAEoCVIOY2xpZW50RG9jdW1lbnQSHgoKY2xpZW50TmFtZRgLIAEoCV'
    'IKY2xpZW50TmFtZRIgCgtjbGllbnRFbWFpbBgMIAEoCVILY2xpZW50RW1haWwSJgoOY2xpZW50'
    'TG9jYXRpb24YDSABKAlSDmNsaWVudExvY2F0aW9uEi4KEnBheW1lbnRDb25kaXRpb25JZBgOIA'
    'EoA1IScGF5bWVudENvbmRpdGlvbklkEiIKDG9ic2VydmF0aW9ucxgPIAEoCVIMb2JzZXJ2YXRp'
    'b25zEhYKBnVzZXJJZBgQIAEoBVIGdXNlcklkEiQKDW9wZXJhdGlvblR5cGUYESABKAVSDW9wZX'
    'JhdGlvblR5cGUSJAoNb3BlcmF0aW9uQ29kZRgSIAEoCVINb3BlcmF0aW9uQ29kZRIeCgp0b3Rh'
    'bFdvcmRzGBMgASgJUgp0b3RhbFdvcmRzEhoKCHRvdGFsU3ViGBQgASgBUgh0b3RhbFN1YhIQCg'
    'N0YXgYFSABKAFSA3RheBIaCghyb3VuZGluZxgWIAEoAVIIcm91bmRpbmcSFAoFdG90YWwYFyAB'
    'KAFSBXRvdGFsEhoKCGRpc2NvdW50GBggASgBUghkaXNjb3VudBIuChJkaXNjb3VudFdpdGhPdX'
    'RUYXgYGSABKAFSEmRpc2NvdW50V2l0aE91dFRheBIaCghicmFuY2hJZBgaIAEoA1IIYnJhbmNo'
    'SWQSIgoMZG9jdW1lbnRUeXBlGBsgASgJUgxkb2N1bWVudFR5cGUSFgoGd2VpZ2h0GBwgASgBUg'
    'Z3ZWlnaHQSFgoGc2VsbGVyGB0gASgJUgZzZWxsZXISGgoIZm9ybWF0SWQYHiABKANSCGZvcm1h'
    'dElkEh4KCm91dHB1dE5vdGUYHyABKAhSCm91dHB1dE5vdGUSHAoJc3RvcmFnZUlkGCAgASgDUg'
    'lzdG9yYWdlSWQSOAoXcXVvdGF0aW9uVHlwZURvY3VtZW50SWQYISABKANSF3F1b3RhdGlvblR5'
    'cGVEb2N1bWVudElkEhYKBnR5cGVJZBgiIAEoBVIGdHlwZUlkEhYKBnpvbmVJZBgjIAEoA1IGem'
    '9uZUlkEigKD2RlbGl2ZXJ5VmVoaWNsZRgkIAEoA1IPZGVsaXZlcnlWZWhpY2xlEiIKDGRlbGl2'
    'ZXJ5RGF0ZRglIAEoCVIMZGVsaXZlcnlEYXRlEh4KCmVtcGxveWVlSWQYJiABKANSCmVtcGxveW'
    'VlSWQSIgoMYnJhbmNoU2FsZUlkGCcgASgDUgxicmFuY2hTYWxlSWQSHAoJZW1pc29yUnVjGCgg'
    'ASgJUgllbWlzb3JSdWMSFAoFc2VyaWUYKSABKAlSBXNlcmllEioKEGRvY3VtZW50VHlwZUNvZG'
    'UYKiABKAlSEGRvY3VtZW50VHlwZUNvZGUSJgoOZ2xvYmFsRGlzY291bnQYKyABKAFSDmdsb2Jh'
    'bERpc2NvdW50EiAKC3Jlc3BvbnNpYmxlGCwgASgJUgtyZXNwb25zaWJsZRIaCghzaGlwcGluZx'
    'gtIAEoCVIIc2hpcHBpbmcSMgoUc3VwZXJ2aXNvclJlcXVlc3RpbmcYLiABKAlSFHN1cGVydmlz'
    'b3JSZXF1ZXN0aW5nEhoKCHdhcnJhbnR5GC8gASgJUgh3YXJyYW50eRIeCgpzZWxsQW1vdW50GD'
    'AgASgBUgpzZWxsQW1vdW50EiAKC3NlbGxCYWxhbmNlGDEgASgBUgtzZWxsQmFsYW5jZRIwChNv'
    'bmxpbmVTZXJ2aWNlVHlwZWlkGDIgASgDUhNvbmxpbmVTZXJ2aWNlVHlwZWlkEiQKDW1vZGVTZX'
    'J2aWNlSWQYMyABKANSDW1vZGVTZXJ2aWNlSWQSHAoJc2VsbFBsYWNlGDQgASgDUglzZWxsUGxh'
    'Y2USMgoUc2VsbGVyQ29tbWlzc2lvblNhbGUYNSABKAFSFHNlbGxlckNvbW1pc3Npb25TYWxlEh'
    '4KCnRheEFwcGxpZWQYNiABKAFSCnRheEFwcGxpZWQSJgoOdGF4VW5pdEFwcGxpZWQYNyABKAFS'
    'DnRheFVuaXRBcHBsaWVkEh4KCmlzVHJhbnNmZXIYOCABKAhSCmlzVHJhbnNmZXISMgoUc3Rvcm'
    'FnZURlc3RpbmF0aW9uSWQYOSABKANSFHN0b3JhZ2VEZXN0aW5hdGlvbklkEi4KEmlzQ3JlZGl0'
    'U3VtdWxhdGlvbhg6IAEoCFISaXNDcmVkaXRTdW11bGF0aW9uEhIKBGNhc2gYOyABKAFSBGNhc2'
    'gSHgoKY2hhbmdlQ2FzaBg8IAEoAVIKY2hhbmdlQ2FzaBIqChBwZXJpb2RJbXBvcnREYXRlGD0g'
    'ASgJUhBwZXJpb2RJbXBvcnREYXRlEhIKBG5vdGUYPiABKAlSBG5vdGUSEgoEanNvbhg/IAEoCV'
    'IEanNvbhIeCgpmcmVlQW1vdW50GEAgASgBUgpmcmVlQW1vdW50EhoKCHNhbGVzVGF4GEEgASgB'
    'UghzYWxlc1RheBIgCgtjbGllbnRQaG9uZRhCIAEoCVILY2xpZW50UGhvbmUSFgoGZGF0ZUlkGE'
    'MgASgDUgZkYXRlSWQSFAoFcGxhdGUYRCABKAlSBXBsYXRlEj4KGnBheW1lbnRDb25kaXRpb25S'
    'ZXN0YXVyYW50GEUgASgFUhpwYXltZW50Q29uZGl0aW9uUmVzdGF1cmFudBIgCgt2ZWhpY2xlVH'
    'lwZRhGIAEoBVILdmVoaWNsZVR5cGUSIAoLY291bnRlclR5cGUYRyABKAVSC2NvdW50ZXJUeXBl'
    'EiwKEXJlc3RhdXJhbnRDaGFubmVsGEggASgJUhFyZXN0YXVyYW50Q2hhbm5lbBIqChByZXN0YX'
    'VyYW50V2FpdGVyGEkgASgJUhByZXN0YXVyYW50V2FpdGVyEh4KCmNhcmREZXRhaWwYSiABKAlS'
    'CmNhcmREZXRhaWwSMAoFaXRlbXMYSyADKAsyGi5xdW90YXRpb24uUXVvdGF0aW9uRGV0YWlsUg'
    'VpdGVtcw==');

@$core.Deprecated('Use quotationDetailDescriptor instead')
const QuotationDetail$json = {
  '1': 'QuotationDetail',
  '2': [
    {'1': 'quotationId', '3': 1, '4': 1, '5': 3, '10': 'quotationId'},
    {'1': 'productId', '3': 2, '4': 1, '5': 3, '10': 'productId'},
    {'1': 'itemId', '3': 3, '4': 1, '5': 5, '10': 'itemId'},
    {'1': 'unitOfMeasure', '3': 4, '4': 1, '5': 9, '10': 'unitOfMeasure'},
    {'1': 'count', '3': 5, '4': 1, '5': 1, '10': 'count'},
    {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
    {'1': 'observations', '3': 7, '4': 1, '5': 9, '10': 'observations'},
    {'1': 'delivery', '3': 8, '4': 1, '5': 9, '10': 'delivery'},
    {'1': 'effectTypeCode', '3': 9, '4': 1, '5': 9, '10': 'effectTypeCode'},
    {'1': 'unitValue', '3': 10, '4': 1, '5': 1, '10': 'unitValue'},
    {'1': 'unitTax', '3': 11, '4': 1, '5': 1, '10': 'unitTax'},
    {'1': 'unitPrice', '3': 12, '4': 1, '5': 1, '10': 'unitPrice'},
    {'1': 'unitPriceO', '3': 13, '4': 1, '5': 1, '10': 'unitPriceO'},
    {'1': 'discount', '3': 14, '4': 1, '5': 1, '10': 'discount'},
    {'1': 'rounding', '3': 15, '4': 1, '5': 1, '10': 'rounding'},
    {'1': 'sellAmount', '3': 16, '4': 1, '5': 1, '10': 'sellAmount'},
    {'1': 'tax', '3': 17, '4': 1, '5': 1, '10': 'tax'},
    {'1': 'total', '3': 18, '4': 1, '5': 1, '10': 'total'},
    {'1': 'taxAppliedId', '3': 19, '4': 1, '5': 5, '10': 'taxAppliedId'},
    {'1': 'effectTypeId', '3': 20, '4': 1, '5': 5, '10': 'effectTypeId'},
    {'1': 'editableId', '3': 21, '4': 1, '5': 5, '10': 'editableId'},
    {'1': 'weight', '3': 22, '4': 1, '5': 1, '10': 'weight'},
    {'1': 'discountTaxt', '3': 23, '4': 1, '5': 1, '10': 'discountTaxt'},
    {'1': 'dicountPercent', '3': 24, '4': 1, '5': 1, '10': 'dicountPercent'},
    {'1': 'stockId', '3': 25, '4': 1, '5': 3, '10': 'stockId'},
    {'1': 'lot', '3': 26, '4': 1, '5': 9, '10': 'lot'},
    {'1': 'quotationDadId', '3': 27, '4': 1, '5': 3, '10': 'quotationDadId'},
    {'1': 'quotationDadItemId', '3': 28, '4': 1, '5': 3, '10': 'quotationDadItemId'},
    {'1': 'unitDiscount', '3': 29, '4': 1, '5': 1, '10': 'unitDiscount'},
    {'1': 'clientCode', '3': 30, '4': 1, '5': 9, '10': 'clientCode'},
    {'1': 'boxCount', '3': 31, '4': 1, '5': 1, '10': 'boxCount'},
    {'1': 'itemPercentCommission', '3': 32, '4': 1, '5': 1, '10': 'itemPercentCommission'},
    {'1': 'itemCommission', '3': 33, '4': 1, '5': 1, '10': 'itemCommission'},
    {'1': 'sellContractDetail', '3': 34, '4': 1, '5': 3, '10': 'sellContractDetail'},
    {'1': 'isBoxSell', '3': 35, '4': 1, '5': 8, '10': 'isBoxSell'},
    {'1': 'salesTax', '3': 36, '4': 1, '5': 1, '10': 'salesTax'},
  ],
};

/// Descriptor for `QuotationDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quotationDetailDescriptor = $convert.base64Decode(
    'Cg9RdW90YXRpb25EZXRhaWwSIAoLcXVvdGF0aW9uSWQYASABKANSC3F1b3RhdGlvbklkEhwKCX'
    'Byb2R1Y3RJZBgCIAEoA1IJcHJvZHVjdElkEhYKBml0ZW1JZBgDIAEoBVIGaXRlbUlkEiQKDXVu'
    'aXRPZk1lYXN1cmUYBCABKAlSDXVuaXRPZk1lYXN1cmUSFAoFY291bnQYBSABKAFSBWNvdW50Eh'
    'IKBG5hbWUYBiABKAlSBG5hbWUSIgoMb2JzZXJ2YXRpb25zGAcgASgJUgxvYnNlcnZhdGlvbnMS'
    'GgoIZGVsaXZlcnkYCCABKAlSCGRlbGl2ZXJ5EiYKDmVmZmVjdFR5cGVDb2RlGAkgASgJUg5lZm'
    'ZlY3RUeXBlQ29kZRIcCgl1bml0VmFsdWUYCiABKAFSCXVuaXRWYWx1ZRIYCgd1bml0VGF4GAsg'
    'ASgBUgd1bml0VGF4EhwKCXVuaXRQcmljZRgMIAEoAVIJdW5pdFByaWNlEh4KCnVuaXRQcmljZU'
    '8YDSABKAFSCnVuaXRQcmljZU8SGgoIZGlzY291bnQYDiABKAFSCGRpc2NvdW50EhoKCHJvdW5k'
    'aW5nGA8gASgBUghyb3VuZGluZxIeCgpzZWxsQW1vdW50GBAgASgBUgpzZWxsQW1vdW50EhAKA3'
    'RheBgRIAEoAVIDdGF4EhQKBXRvdGFsGBIgASgBUgV0b3RhbBIiCgx0YXhBcHBsaWVkSWQYEyAB'
    'KAVSDHRheEFwcGxpZWRJZBIiCgxlZmZlY3RUeXBlSWQYFCABKAVSDGVmZmVjdFR5cGVJZBIeCg'
    'plZGl0YWJsZUlkGBUgASgFUgplZGl0YWJsZUlkEhYKBndlaWdodBgWIAEoAVIGd2VpZ2h0EiIK'
    'DGRpc2NvdW50VGF4dBgXIAEoAVIMZGlzY291bnRUYXh0EiYKDmRpY291bnRQZXJjZW50GBggAS'
    'gBUg5kaWNvdW50UGVyY2VudBIYCgdzdG9ja0lkGBkgASgDUgdzdG9ja0lkEhAKA2xvdBgaIAEo'
    'CVIDbG90EiYKDnF1b3RhdGlvbkRhZElkGBsgASgDUg5xdW90YXRpb25EYWRJZBIuChJxdW90YX'
    'Rpb25EYWRJdGVtSWQYHCABKANSEnF1b3RhdGlvbkRhZEl0ZW1JZBIiCgx1bml0RGlzY291bnQY'
    'HSABKAFSDHVuaXREaXNjb3VudBIeCgpjbGllbnRDb2RlGB4gASgJUgpjbGllbnRDb2RlEhoKCG'
    'JveENvdW50GB8gASgBUghib3hDb3VudBI0ChVpdGVtUGVyY2VudENvbW1pc3Npb24YICABKAFS'
    'FWl0ZW1QZXJjZW50Q29tbWlzc2lvbhImCg5pdGVtQ29tbWlzc2lvbhghIAEoAVIOaXRlbUNvbW'
    '1pc3Npb24SLgoSc2VsbENvbnRyYWN0RGV0YWlsGCIgASgDUhJzZWxsQ29udHJhY3REZXRhaWwS'
    'HAoJaXNCb3hTZWxsGCMgASgIUglpc0JveFNlbGwSGgoIc2FsZXNUYXgYJCABKAFSCHNhbGVzVG'
    'F4');

@$core.Deprecated('Use quotationResponseDescriptor instead')
const QuotationResponse$json = {
  '1': 'QuotationResponse',
  '2': [
    {'1': 'quotationId', '3': 1, '4': 1, '5': 3, '10': 'quotationId'},
    {'1': 'number', '3': 2, '4': 1, '5': 3, '10': 'number'},
  ],
};

/// Descriptor for `QuotationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quotationResponseDescriptor = $convert.base64Decode(
    'ChFRdW90YXRpb25SZXNwb25zZRIgCgtxdW90YXRpb25JZBgBIAEoA1ILcXVvdGF0aW9uSWQSFg'
    'oGbnVtYmVyGAIgASgDUgZudW1iZXI=');

@$core.Deprecated('Use oneOfQuotationResponseDescriptor instead')
const OneOfQuotationResponse$json = {
  '1': 'OneOfQuotationResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.error.Error', '9': 0, '10': 'error'},
    {'1': 'quotationResponse', '3': 2, '4': 1, '5': 11, '6': '.quotation.QuotationResponse', '9': 0, '10': 'quotationResponse'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `OneOfQuotationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneOfQuotationResponseDescriptor = $convert.base64Decode(
    'ChZPbmVPZlF1b3RhdGlvblJlc3BvbnNlEiQKBWVycm9yGAEgASgLMgwuZXJyb3IuRXJyb3JIAF'
    'IFZXJyb3ISTAoRcXVvdGF0aW9uUmVzcG9uc2UYAiABKAsyHC5xdW90YXRpb24uUXVvdGF0aW9u'
    'UmVzcG9uc2VIAFIRcXVvdGF0aW9uUmVzcG9uc2VCCgoIcmVzcG9uc2U=');

