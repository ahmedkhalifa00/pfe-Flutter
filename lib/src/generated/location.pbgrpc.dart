//
//  Generated code. Do not modify.
//  source: location.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/empty.pb.dart' as $1;
import 'location.pb.dart' as $0;

export 'location.pb.dart';

class LocationServiceClient extends $grpc.Client {
  static final _$updateLocation = $grpc.ClientMethod<$0.Location, $1.Empty>(
      '/tracker.LocationService/UpdateLocation',
      ($0.Location value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$updateHomeLocation =
      $grpc.ClientMethod<$0.HomeLocation, $1.Empty>(
          '/tracker.LocationService/UpdateHomeLocation',
          ($0.HomeLocation value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getLocation = $grpc.ClientMethod<$0.KidId, $0.Location>(
      '/tracker.LocationService/GetLocation',
      ($0.KidId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Location.fromBuffer(value));
  static final _$getLocationHistory =
      $grpc.ClientMethod<$0.LocationHistoryRequest, $0.LocationHistoryResponse>(
          '/tracker.LocationService/GetLocationHistory',
          ($0.LocationHistoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LocationHistoryResponse.fromBuffer(value));
  static final _$startMicListening =
      $grpc.ClientMethod<$0.MicRequest, $0.Response>(
          '/tracker.LocationService/StartMicListening',
          ($0.MicRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Response.fromBuffer(value));
  static final _$stopMicListening =
      $grpc.ClientMethod<$0.MicRequest, $0.Response>(
          '/tracker.LocationService/StopMicListening',
          ($0.MicRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Response.fromBuffer(value));
  static final _$startVolumeNotification =
      $grpc.ClientMethod<$0.VolumeRequest, $0.Response>(
          '/tracker.LocationService/StartVolumeNotification',
          ($0.VolumeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Response.fromBuffer(value));
  static final _$stopVolumeNotification =
      $grpc.ClientMethod<$0.VolumeRequest, $0.Response>(
          '/tracker.LocationService/StopVolumeNotification',
          ($0.VolumeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Response.fromBuffer(value));

  LocationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> updateLocation($0.Location request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateLocation, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateHomeLocation($0.HomeLocation request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateHomeLocation, request, options: options);
  }

  $grpc.ResponseStream<$0.Location> getLocation($async.Stream<$0.KidId> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getLocation, request, options: options);
  }

  $grpc.ResponseFuture<$0.LocationHistoryResponse> getLocationHistory(
      $0.LocationHistoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocationHistory, request, options: options);
  }

  $grpc.ResponseFuture<$0.Response> startMicListening($0.MicRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startMicListening, request, options: options);
  }

  $grpc.ResponseFuture<$0.Response> stopMicListening($0.MicRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopMicListening, request, options: options);
  }

  $grpc.ResponseFuture<$0.Response> startVolumeNotification(
      $0.VolumeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startVolumeNotification, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Response> stopVolumeNotification(
      $0.VolumeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopVolumeNotification, request,
        options: options);
  }
}

abstract class LocationServiceBase extends $grpc.Service {
  $core.String get $name => 'tracker.LocationService';

  LocationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Location, $1.Empty>(
        'UpdateLocation',
        updateLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Location.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HomeLocation, $1.Empty>(
        'UpdateHomeLocation',
        updateHomeLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HomeLocation.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KidId, $0.Location>(
        'GetLocation',
        getLocation,
        true,
        true,
        ($core.List<$core.int> value) => $0.KidId.fromBuffer(value),
        ($0.Location value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LocationHistoryRequest,
            $0.LocationHistoryResponse>(
        'GetLocationHistory',
        getLocationHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.LocationHistoryRequest.fromBuffer(value),
        ($0.LocationHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MicRequest, $0.Response>(
        'StartMicListening',
        startMicListening_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MicRequest.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MicRequest, $0.Response>(
        'StopMicListening',
        stopMicListening_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MicRequest.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VolumeRequest, $0.Response>(
        'StartVolumeNotification',
        startVolumeNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VolumeRequest.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VolumeRequest, $0.Response>(
        'StopVolumeNotification',
        stopVolumeNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VolumeRequest.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> updateLocation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Location> request) async {
    return updateLocation(call, await request);
  }

  $async.Future<$1.Empty> updateHomeLocation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.HomeLocation> request) async {
    return updateHomeLocation(call, await request);
  }

  $async.Future<$0.LocationHistoryResponse> getLocationHistory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.LocationHistoryRequest> request) async {
    return getLocationHistory(call, await request);
  }

  $async.Future<$0.Response> startMicListening_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MicRequest> request) async {
    return startMicListening(call, await request);
  }

  $async.Future<$0.Response> stopMicListening_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MicRequest> request) async {
    return stopMicListening(call, await request);
  }

  $async.Future<$0.Response> startVolumeNotification_Pre(
      $grpc.ServiceCall call, $async.Future<$0.VolumeRequest> request) async {
    return startVolumeNotification(call, await request);
  }

  $async.Future<$0.Response> stopVolumeNotification_Pre(
      $grpc.ServiceCall call, $async.Future<$0.VolumeRequest> request) async {
    return stopVolumeNotification(call, await request);
  }

  $async.Future<$1.Empty> updateLocation(
      $grpc.ServiceCall call, $0.Location request);
  $async.Future<$1.Empty> updateHomeLocation(
      $grpc.ServiceCall call, $0.HomeLocation request);
  $async.Stream<$0.Location> getLocation(
      $grpc.ServiceCall call, $async.Stream<$0.KidId> request);
  $async.Future<$0.LocationHistoryResponse> getLocationHistory(
      $grpc.ServiceCall call, $0.LocationHistoryRequest request);
  $async.Future<$0.Response> startMicListening(
      $grpc.ServiceCall call, $0.MicRequest request);
  $async.Future<$0.Response> stopMicListening(
      $grpc.ServiceCall call, $0.MicRequest request);
  $async.Future<$0.Response> startVolumeNotification(
      $grpc.ServiceCall call, $0.VolumeRequest request);
  $async.Future<$0.Response> stopVolumeNotification(
      $grpc.ServiceCall call, $0.VolumeRequest request);
}
