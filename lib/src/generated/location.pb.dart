//
//  Generated code. Do not modify.
//  source: location.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Location extends $pb.GeneratedMessage {
  factory Location({
    $core.String? kidId,
    $core.double? latitude,
    $core.double? longitude,
    $core.String? timestamp,
  }) {
    final $result = create();
    if (kidId != null) {
      $result.kidId = kidId;
    }
    if (latitude != null) {
      $result.latitude = latitude;
    }
    if (longitude != null) {
      $result.longitude = longitude;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    return $result;
  }
  Location._() : super();
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Location', package: const $pb.PackageName(_omitMessageNames ? '' : 'tracker'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kidId', protoName: 'kidId')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'longitude', $pb.PbFieldType.OD)
    ..aOS(4, _omitFieldNames ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)) as Location;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kidId => $_getSZ(0);
  @$pb.TagNumber(1)
  set kidId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKidId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKidId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get latitude => $_getN(1);
  @$pb.TagNumber(2)
  set latitude($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get longitude => $_getN(2);
  @$pb.TagNumber(3)
  set longitude($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLongitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongitude() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get timestamp => $_getSZ(3);
  @$pb.TagNumber(4)
  set timestamp($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);
}

class HomeLocation extends $pb.GeneratedMessage {
  factory HomeLocation({
    $core.String? kidId,
    $core.double? latitude,
    $core.double? longitude,
    $core.double? radius,
  }) {
    final $result = create();
    if (kidId != null) {
      $result.kidId = kidId;
    }
    if (latitude != null) {
      $result.latitude = latitude;
    }
    if (longitude != null) {
      $result.longitude = longitude;
    }
    if (radius != null) {
      $result.radius = radius;
    }
    return $result;
  }
  HomeLocation._() : super();
  factory HomeLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HomeLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HomeLocation', package: const $pb.PackageName(_omitMessageNames ? '' : 'tracker'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kidId', protoName: 'kidId')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'longitude', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'radius', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HomeLocation clone() => HomeLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HomeLocation copyWith(void Function(HomeLocation) updates) => super.copyWith((message) => updates(message as HomeLocation)) as HomeLocation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HomeLocation create() => HomeLocation._();
  HomeLocation createEmptyInstance() => create();
  static $pb.PbList<HomeLocation> createRepeated() => $pb.PbList<HomeLocation>();
  @$core.pragma('dart2js:noInline')
  static HomeLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomeLocation>(create);
  static HomeLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kidId => $_getSZ(0);
  @$pb.TagNumber(1)
  set kidId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKidId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKidId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get latitude => $_getN(1);
  @$pb.TagNumber(2)
  set latitude($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get longitude => $_getN(2);
  @$pb.TagNumber(3)
  set longitude($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLongitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongitude() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get radius => $_getN(3);
  @$pb.TagNumber(4)
  set radius($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRadius() => $_has(3);
  @$pb.TagNumber(4)
  void clearRadius() => clearField(4);
}

class KidId extends $pb.GeneratedMessage {
  factory KidId({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  KidId._() : super();
  factory KidId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KidId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KidId', package: const $pb.PackageName(_omitMessageNames ? '' : 'tracker'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KidId clone() => KidId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KidId copyWith(void Function(KidId) updates) => super.copyWith((message) => updates(message as KidId)) as KidId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KidId create() => KidId._();
  KidId createEmptyInstance() => create();
  static $pb.PbList<KidId> createRepeated() => $pb.PbList<KidId>();
  @$core.pragma('dart2js:noInline')
  static KidId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KidId>(create);
  static KidId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class MicRequest extends $pb.GeneratedMessage {
  factory MicRequest({
    $core.String? kidId,
  }) {
    final $result = create();
    if (kidId != null) {
      $result.kidId = kidId;
    }
    return $result;
  }
  MicRequest._() : super();
  factory MicRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MicRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MicRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'tracker'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kidId', protoName: 'kidId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MicRequest clone() => MicRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MicRequest copyWith(void Function(MicRequest) updates) => super.copyWith((message) => updates(message as MicRequest)) as MicRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MicRequest create() => MicRequest._();
  MicRequest createEmptyInstance() => create();
  static $pb.PbList<MicRequest> createRepeated() => $pb.PbList<MicRequest>();
  @$core.pragma('dart2js:noInline')
  static MicRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MicRequest>(create);
  static MicRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kidId => $_getSZ(0);
  @$pb.TagNumber(1)
  set kidId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKidId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKidId() => clearField(1);
}

class VolumeRequest extends $pb.GeneratedMessage {
  factory VolumeRequest({
    $core.String? kidId,
  }) {
    final $result = create();
    if (kidId != null) {
      $result.kidId = kidId;
    }
    return $result;
  }
  VolumeRequest._() : super();
  factory VolumeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'tracker'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kidId', protoName: 'kidId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeRequest clone() => VolumeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeRequest copyWith(void Function(VolumeRequest) updates) => super.copyWith((message) => updates(message as VolumeRequest)) as VolumeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeRequest create() => VolumeRequest._();
  VolumeRequest createEmptyInstance() => create();
  static $pb.PbList<VolumeRequest> createRepeated() => $pb.PbList<VolumeRequest>();
  @$core.pragma('dart2js:noInline')
  static VolumeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeRequest>(create);
  static VolumeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kidId => $_getSZ(0);
  @$pb.TagNumber(1)
  set kidId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKidId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKidId() => clearField(1);
}

class Response extends $pb.GeneratedMessage {
  factory Response({
    $core.String? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  Response._() : super();
  factory Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Response', package: const $pb.PackageName(_omitMessageNames ? '' : 'tracker'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response)) as Response;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class LocationHistoryRequest extends $pb.GeneratedMessage {
  factory LocationHistoryRequest({
    $core.String? kidId,
    $core.String? startDate,
    $core.String? endDate,
  }) {
    final $result = create();
    if (kidId != null) {
      $result.kidId = kidId;
    }
    if (startDate != null) {
      $result.startDate = startDate;
    }
    if (endDate != null) {
      $result.endDate = endDate;
    }
    return $result;
  }
  LocationHistoryRequest._() : super();
  factory LocationHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'tracker'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kidId', protoName: 'kidId')
    ..aOS(2, _omitFieldNames ? '' : 'startDate', protoName: 'startDate')
    ..aOS(3, _omitFieldNames ? '' : 'endDate', protoName: 'endDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationHistoryRequest clone() => LocationHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationHistoryRequest copyWith(void Function(LocationHistoryRequest) updates) => super.copyWith((message) => updates(message as LocationHistoryRequest)) as LocationHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationHistoryRequest create() => LocationHistoryRequest._();
  LocationHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<LocationHistoryRequest> createRepeated() => $pb.PbList<LocationHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static LocationHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationHistoryRequest>(create);
  static LocationHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kidId => $_getSZ(0);
  @$pb.TagNumber(1)
  set kidId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKidId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKidId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get startDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set startDate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get endDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set endDate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndDate() => clearField(3);
}

class LocationHistoryResponse extends $pb.GeneratedMessage {
  factory LocationHistoryResponse({
    $core.Iterable<Location>? locations,
  }) {
    final $result = create();
    if (locations != null) {
      $result.locations.addAll(locations);
    }
    return $result;
  }
  LocationHistoryResponse._() : super();
  factory LocationHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'tracker'), createEmptyInstance: create)
    ..pc<Location>(1, _omitFieldNames ? '' : 'locations', $pb.PbFieldType.PM, subBuilder: Location.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationHistoryResponse clone() => LocationHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationHistoryResponse copyWith(void Function(LocationHistoryResponse) updates) => super.copyWith((message) => updates(message as LocationHistoryResponse)) as LocationHistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationHistoryResponse create() => LocationHistoryResponse._();
  LocationHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<LocationHistoryResponse> createRepeated() => $pb.PbList<LocationHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static LocationHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationHistoryResponse>(create);
  static LocationHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Location> get locations => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
