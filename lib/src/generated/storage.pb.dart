//
//  Generated code. Do not modify.
//  source: storage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Storage extends $pb.GeneratedMessage {
  factory Storage({
    $fixnum.Int64? storageId,
    $core.String? name,
  }) {
    final $result = create();
    if (storageId != null) {
      $result.storageId = storageId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  Storage._() : super();
  factory Storage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Storage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Storage', package: const $pb.PackageName(_omitMessageNames ? '' : 'storage'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'storageId', protoName: 'storageId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Storage clone() => Storage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Storage copyWith(void Function(Storage) updates) => super.copyWith((message) => updates(message as Storage)) as Storage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Storage create() => Storage._();
  Storage createEmptyInstance() => create();
  static $pb.PbList<Storage> createRepeated() => $pb.PbList<Storage>();
  @$core.pragma('dart2js:noInline')
  static Storage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Storage>(create);
  static Storage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get storageId => $_getI64(0);
  @$pb.TagNumber(1)
  set storageId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStorageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStorageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
