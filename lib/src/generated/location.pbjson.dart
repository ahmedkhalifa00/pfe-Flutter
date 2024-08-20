//
//  Generated code. Do not modify.
//  source: location.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use locationDescriptor instead')
const Location$json = {
  '1': 'Location',
  '2': [
    {'1': 'kidId', '3': 1, '4': 1, '5': 9, '10': 'kidId'},
    {'1': 'latitude', '3': 2, '4': 1, '5': 1, '10': 'latitude'},
    {'1': 'longitude', '3': 3, '4': 1, '5': 1, '10': 'longitude'},
    {'1': 'timestamp', '3': 4, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode(
    'CghMb2NhdGlvbhIUCgVraWRJZBgBIAEoCVIFa2lkSWQSGgoIbGF0aXR1ZGUYAiABKAFSCGxhdG'
    'l0dWRlEhwKCWxvbmdpdHVkZRgDIAEoAVIJbG9uZ2l0dWRlEhwKCXRpbWVzdGFtcBgEIAEoCVIJ'
    'dGltZXN0YW1w');

@$core.Deprecated('Use homeLocationDescriptor instead')
const HomeLocation$json = {
  '1': 'HomeLocation',
  '2': [
    {'1': 'kidId', '3': 1, '4': 1, '5': 9, '10': 'kidId'},
    {'1': 'latitude', '3': 2, '4': 1, '5': 1, '10': 'latitude'},
    {'1': 'longitude', '3': 3, '4': 1, '5': 1, '10': 'longitude'},
    {'1': 'radius', '3': 4, '4': 1, '5': 1, '10': 'radius'},
  ],
};

/// Descriptor for `HomeLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List homeLocationDescriptor = $convert.base64Decode(
    'CgxIb21lTG9jYXRpb24SFAoFa2lkSWQYASABKAlSBWtpZElkEhoKCGxhdGl0dWRlGAIgASgBUg'
    'hsYXRpdHVkZRIcCglsb25naXR1ZGUYAyABKAFSCWxvbmdpdHVkZRIWCgZyYWRpdXMYBCABKAFS'
    'BnJhZGl1cw==');

@$core.Deprecated('Use kidIdDescriptor instead')
const KidId$json = {
  '1': 'KidId',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `KidId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kidIdDescriptor = $convert.base64Decode(
    'CgVLaWRJZBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use micRequestDescriptor instead')
const MicRequest$json = {
  '1': 'MicRequest',
  '2': [
    {'1': 'kidId', '3': 1, '4': 1, '5': 9, '10': 'kidId'},
  ],
};

/// Descriptor for `MicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List micRequestDescriptor = $convert.base64Decode(
    'CgpNaWNSZXF1ZXN0EhQKBWtpZElkGAEgASgJUgVraWRJZA==');

@$core.Deprecated('Use volumeRequestDescriptor instead')
const VolumeRequest$json = {
  '1': 'VolumeRequest',
  '2': [
    {'1': 'kidId', '3': 1, '4': 1, '5': 9, '10': 'kidId'},
  ],
};

/// Descriptor for `VolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeRequestDescriptor = $convert.base64Decode(
    'Cg1Wb2x1bWVSZXF1ZXN0EhQKBWtpZElkGAEgASgJUgVraWRJZA==');

@$core.Deprecated('Use responseDescriptor instead')
const Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cw==');

@$core.Deprecated('Use locationHistoryRequestDescriptor instead')
const LocationHistoryRequest$json = {
  '1': 'LocationHistoryRequest',
  '2': [
    {'1': 'kidId', '3': 1, '4': 1, '5': 9, '10': 'kidId'},
    {'1': 'startDate', '3': 2, '4': 1, '5': 9, '10': 'startDate'},
    {'1': 'endDate', '3': 3, '4': 1, '5': 9, '10': 'endDate'},
  ],
};

/// Descriptor for `LocationHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationHistoryRequestDescriptor = $convert.base64Decode(
    'ChZMb2NhdGlvbkhpc3RvcnlSZXF1ZXN0EhQKBWtpZElkGAEgASgJUgVraWRJZBIcCglzdGFydE'
    'RhdGUYAiABKAlSCXN0YXJ0RGF0ZRIYCgdlbmREYXRlGAMgASgJUgdlbmREYXRl');

@$core.Deprecated('Use locationHistoryResponseDescriptor instead')
const LocationHistoryResponse$json = {
  '1': 'LocationHistoryResponse',
  '2': [
    {'1': 'locations', '3': 1, '4': 3, '5': 11, '6': '.tracker.Location', '10': 'locations'},
  ],
};

/// Descriptor for `LocationHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationHistoryResponseDescriptor = $convert.base64Decode(
    'ChdMb2NhdGlvbkhpc3RvcnlSZXNwb25zZRIvCglsb2NhdGlvbnMYASADKAsyES50cmFja2VyLk'
    'xvY2F0aW9uUglsb2NhdGlvbnM=');

