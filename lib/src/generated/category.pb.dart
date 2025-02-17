//
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Category extends $pb.GeneratedMessage {
  factory Category({
    $fixnum.Int64? categoryId,
    $core.String? name,
  }) {
    final $result = create();
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  Category._() : super();
  factory Category.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Category.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Category', package: const $pb.PackageName(_omitMessageNames ? '' : 'category'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'categoryId', protoName: 'categoryId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Category clone() => Category()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Category copyWith(void Function(Category) updates) => super.copyWith((message) => updates(message as Category)) as Category;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Category create() => Category._();
  Category createEmptyInstance() => create();
  static $pb.PbList<Category> createRepeated() => $pb.PbList<Category>();
  @$core.pragma('dart2js:noInline')
  static Category getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Category>(create);
  static Category? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get categoryId => $_getI64(0);
  @$pb.TagNumber(1)
  set categoryId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategoryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class SubCategory extends $pb.GeneratedMessage {
  factory SubCategory({
    $fixnum.Int64? subCategoryId,
    $core.String? name,
    $fixnum.Int64? categoryId,
  }) {
    final $result = create();
    if (subCategoryId != null) {
      $result.subCategoryId = subCategoryId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    return $result;
  }
  SubCategory._() : super();
  factory SubCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubCategory', package: const $pb.PackageName(_omitMessageNames ? '' : 'category'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'subCategoryId', protoName: 'subCategoryId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aInt64(3, _omitFieldNames ? '' : 'categoryId', protoName: 'categoryId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubCategory clone() => SubCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubCategory copyWith(void Function(SubCategory) updates) => super.copyWith((message) => updates(message as SubCategory)) as SubCategory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubCategory create() => SubCategory._();
  SubCategory createEmptyInstance() => create();
  static $pb.PbList<SubCategory> createRepeated() => $pb.PbList<SubCategory>();
  @$core.pragma('dart2js:noInline')
  static SubCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubCategory>(create);
  static SubCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subCategoryId => $_getI64(0);
  @$pb.TagNumber(1)
  set subCategoryId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubCategoryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubCategoryId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get categoryId => $_getI64(2);
  @$pb.TagNumber(3)
  set categoryId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategoryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategoryId() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
