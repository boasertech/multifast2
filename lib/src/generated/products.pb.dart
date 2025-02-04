//
//  Generated code. Do not modify.
//  source: products.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Property extends $pb.GeneratedMessage {
  factory Property({
    $fixnum.Int64? propertyId,
    $core.String? propertyName,
    $core.bool? isDefault,
    $core.double? additionalPrice,
    $core.bool? isProduct,
    $fixnum.Int64? productId,
  }) {
    final $result = create();
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    if (propertyName != null) {
      $result.propertyName = propertyName;
    }
    if (isDefault != null) {
      $result.isDefault = isDefault;
    }
    if (additionalPrice != null) {
      $result.additionalPrice = additionalPrice;
    }
    if (isProduct != null) {
      $result.isProduct = isProduct;
    }
    if (productId != null) {
      $result.productId = productId;
    }
    return $result;
  }
  Property._() : super();
  factory Property.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Property.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Property', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'propertyId', protoName: 'propertyId')
    ..aOS(2, _omitFieldNames ? '' : 'propertyName', protoName: 'propertyName')
    ..aOB(3, _omitFieldNames ? '' : 'isDefault', protoName: 'isDefault')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'additionalPrice', $pb.PbFieldType.OD, protoName: 'additionalPrice')
    ..aOB(5, _omitFieldNames ? '' : 'isProduct', protoName: 'isProduct')
    ..aInt64(6, _omitFieldNames ? '' : 'productId', protoName: 'productId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Property clone() => Property()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Property copyWith(void Function(Property) updates) => super.copyWith((message) => updates(message as Property)) as Property;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Property create() => Property._();
  Property createEmptyInstance() => create();
  static $pb.PbList<Property> createRepeated() => $pb.PbList<Property>();
  @$core.pragma('dart2js:noInline')
  static Property getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Property>(create);
  static Property? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get propertyId => $_getI64(0);
  @$pb.TagNumber(1)
  set propertyId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get propertyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set propertyName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isDefault => $_getBF(2);
  @$pb.TagNumber(3)
  set isDefault($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsDefault() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsDefault() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get additionalPrice => $_getN(3);
  @$pb.TagNumber(4)
  set additionalPrice($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAdditionalPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdditionalPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isProduct => $_getBF(4);
  @$pb.TagNumber(5)
  set isProduct($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsProduct() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsProduct() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get productId => $_getI64(5);
  @$pb.TagNumber(6)
  set productId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProductId() => $_has(5);
  @$pb.TagNumber(6)
  void clearProductId() => clearField(6);
}

class Operator extends $pb.GeneratedMessage {
  factory Operator({
    $fixnum.Int64? operatorId,
    $core.String? operatorName,
    $core.int? selection,
    $core.Iterable<Property>? properties,
  }) {
    final $result = create();
    if (operatorId != null) {
      $result.operatorId = operatorId;
    }
    if (operatorName != null) {
      $result.operatorName = operatorName;
    }
    if (selection != null) {
      $result.selection = selection;
    }
    if (properties != null) {
      $result.properties.addAll(properties);
    }
    return $result;
  }
  Operator._() : super();
  factory Operator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Operator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Operator', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'operatorId', protoName: 'operatorId')
    ..aOS(2, _omitFieldNames ? '' : 'operatorName', protoName: 'operatorName')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'selection', $pb.PbFieldType.O3)
    ..pc<Property>(4, _omitFieldNames ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: Property.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Operator clone() => Operator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Operator copyWith(void Function(Operator) updates) => super.copyWith((message) => updates(message as Operator)) as Operator;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Operator create() => Operator._();
  Operator createEmptyInstance() => create();
  static $pb.PbList<Operator> createRepeated() => $pb.PbList<Operator>();
  @$core.pragma('dart2js:noInline')
  static Operator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Operator>(create);
  static Operator? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get operatorId => $_getI64(0);
  @$pb.TagNumber(1)
  set operatorId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperatorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperatorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get operatorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set operatorName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperatorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperatorName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get selection => $_getIZ(2);
  @$pb.TagNumber(3)
  set selection($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSelection() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelection() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Property> get properties => $_getList(3);
}

class Product extends $pb.GeneratedMessage {
  factory Product({
    $fixnum.Int64? productId,
    $core.String? productName,
    $core.String? productImage,
    $core.double? unitPrice,
    $fixnum.Int64? categoryId,
    $fixnum.Int64? subCategoryId,
    $core.String? subCategoryName,
    $core.bool? isCombo,
    $core.int? minSelection,
    $core.int? maxSelection,
    $core.bool? allowDuplicateItem,
    $fixnum.Int64? taxTypeId,
    $core.double? taxAmount,
    $core.String? unitOfMeasure,
    $core.Iterable<Operator>? operators,
  }) {
    final $result = create();
    if (productId != null) {
      $result.productId = productId;
    }
    if (productName != null) {
      $result.productName = productName;
    }
    if (productImage != null) {
      $result.productImage = productImage;
    }
    if (unitPrice != null) {
      $result.unitPrice = unitPrice;
    }
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    if (subCategoryId != null) {
      $result.subCategoryId = subCategoryId;
    }
    if (subCategoryName != null) {
      $result.subCategoryName = subCategoryName;
    }
    if (isCombo != null) {
      $result.isCombo = isCombo;
    }
    if (minSelection != null) {
      $result.minSelection = minSelection;
    }
    if (maxSelection != null) {
      $result.maxSelection = maxSelection;
    }
    if (allowDuplicateItem != null) {
      $result.allowDuplicateItem = allowDuplicateItem;
    }
    if (taxTypeId != null) {
      $result.taxTypeId = taxTypeId;
    }
    if (taxAmount != null) {
      $result.taxAmount = taxAmount;
    }
    if (unitOfMeasure != null) {
      $result.unitOfMeasure = unitOfMeasure;
    }
    if (operators != null) {
      $result.operators.addAll(operators);
    }
    return $result;
  }
  Product._() : super();
  factory Product.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Product.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Product', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'productId', protoName: 'productId')
    ..aOS(2, _omitFieldNames ? '' : 'productName', protoName: 'productName')
    ..aOS(3, _omitFieldNames ? '' : 'productImage', protoName: 'productImage')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'unitPrice', $pb.PbFieldType.OD, protoName: 'unitPrice')
    ..aInt64(5, _omitFieldNames ? '' : 'categoryId', protoName: 'categoryId')
    ..aInt64(6, _omitFieldNames ? '' : 'subCategoryId', protoName: 'subCategoryId')
    ..aOS(7, _omitFieldNames ? '' : 'subCategoryName', protoName: 'subCategoryName')
    ..aOB(8, _omitFieldNames ? '' : 'isCombo', protoName: 'isCombo')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'minSelection', $pb.PbFieldType.O3, protoName: 'minSelection')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'maxSelection', $pb.PbFieldType.O3, protoName: 'maxSelection')
    ..aOB(11, _omitFieldNames ? '' : 'allowDuplicateItem', protoName: 'allowDuplicateItem')
    ..aInt64(12, _omitFieldNames ? '' : 'taxTypeId', protoName: 'taxTypeId')
    ..a<$core.double>(13, _omitFieldNames ? '' : 'taxAmount', $pb.PbFieldType.OD, protoName: 'taxAmount')
    ..aOS(14, _omitFieldNames ? '' : 'unitOfMeasure', protoName: 'unitOfMeasure')
    ..pc<Operator>(15, _omitFieldNames ? '' : 'operators', $pb.PbFieldType.PM, subBuilder: Operator.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Product clone() => Product()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Product copyWith(void Function(Product) updates) => super.copyWith((message) => updates(message as Product)) as Product;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Product create() => Product._();
  Product createEmptyInstance() => create();
  static $pb.PbList<Product> createRepeated() => $pb.PbList<Product>();
  @$core.pragma('dart2js:noInline')
  static Product getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Product>(create);
  static Product? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get productId => $_getI64(0);
  @$pb.TagNumber(1)
  set productId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get productName => $_getSZ(1);
  @$pb.TagNumber(2)
  set productName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProductName() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get productImage => $_getSZ(2);
  @$pb.TagNumber(3)
  set productImage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProductImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearProductImage() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get unitPrice => $_getN(3);
  @$pb.TagNumber(4)
  set unitPrice($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnitPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnitPrice() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get categoryId => $_getI64(4);
  @$pb.TagNumber(5)
  set categoryId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategoryId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategoryId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get subCategoryId => $_getI64(5);
  @$pb.TagNumber(6)
  set subCategoryId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSubCategoryId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSubCategoryId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get subCategoryName => $_getSZ(6);
  @$pb.TagNumber(7)
  set subCategoryName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSubCategoryName() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubCategoryName() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isCombo => $_getBF(7);
  @$pb.TagNumber(8)
  set isCombo($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsCombo() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsCombo() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get minSelection => $_getIZ(8);
  @$pb.TagNumber(9)
  set minSelection($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMinSelection() => $_has(8);
  @$pb.TagNumber(9)
  void clearMinSelection() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get maxSelection => $_getIZ(9);
  @$pb.TagNumber(10)
  set maxSelection($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMaxSelection() => $_has(9);
  @$pb.TagNumber(10)
  void clearMaxSelection() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get allowDuplicateItem => $_getBF(10);
  @$pb.TagNumber(11)
  set allowDuplicateItem($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAllowDuplicateItem() => $_has(10);
  @$pb.TagNumber(11)
  void clearAllowDuplicateItem() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get taxTypeId => $_getI64(11);
  @$pb.TagNumber(12)
  set taxTypeId($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTaxTypeId() => $_has(11);
  @$pb.TagNumber(12)
  void clearTaxTypeId() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get taxAmount => $_getN(12);
  @$pb.TagNumber(13)
  set taxAmount($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTaxAmount() => $_has(12);
  @$pb.TagNumber(13)
  void clearTaxAmount() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get unitOfMeasure => $_getSZ(13);
  @$pb.TagNumber(14)
  set unitOfMeasure($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasUnitOfMeasure() => $_has(13);
  @$pb.TagNumber(14)
  void clearUnitOfMeasure() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<Operator> get operators => $_getList(14);
}

class RequestProducts extends $pb.GeneratedMessage {
  factory RequestProducts({
    $core.String? companyRuc,
    $fixnum.Int64? branchId,
  }) {
    final $result = create();
    if (companyRuc != null) {
      $result.companyRuc = companyRuc;
    }
    if (branchId != null) {
      $result.branchId = branchId;
    }
    return $result;
  }
  RequestProducts._() : super();
  factory RequestProducts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestProducts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RequestProducts', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'companyRuc', protoName: 'companyRuc')
    ..aInt64(2, _omitFieldNames ? '' : 'branchId', protoName: 'branchId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestProducts clone() => RequestProducts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestProducts copyWith(void Function(RequestProducts) updates) => super.copyWith((message) => updates(message as RequestProducts)) as RequestProducts;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestProducts create() => RequestProducts._();
  RequestProducts createEmptyInstance() => create();
  static $pb.PbList<RequestProducts> createRepeated() => $pb.PbList<RequestProducts>();
  @$core.pragma('dart2js:noInline')
  static RequestProducts getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestProducts>(create);
  static RequestProducts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get companyRuc => $_getSZ(0);
  @$pb.TagNumber(1)
  set companyRuc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompanyRuc() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompanyRuc() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get branchId => $_getI64(1);
  @$pb.TagNumber(2)
  set branchId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBranchId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBranchId() => clearField(2);
}

class ProductList extends $pb.GeneratedMessage {
  factory ProductList({
    $core.Iterable<Product>? products,
  }) {
    final $result = create();
    if (products != null) {
      $result.products.addAll(products);
    }
    return $result;
  }
  ProductList._() : super();
  factory ProductList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductList', package: const $pb.PackageName(_omitMessageNames ? '' : 'products'), createEmptyInstance: create)
    ..pc<Product>(1, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM, subBuilder: Product.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductList clone() => ProductList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductList copyWith(void Function(ProductList) updates) => super.copyWith((message) => updates(message as ProductList)) as ProductList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductList create() => ProductList._();
  ProductList createEmptyInstance() => create();
  static $pb.PbList<ProductList> createRepeated() => $pb.PbList<ProductList>();
  @$core.pragma('dart2js:noInline')
  static ProductList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductList>(create);
  static ProductList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Product> get products => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
