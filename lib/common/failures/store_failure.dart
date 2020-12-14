import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_failure.freezed.dart';

@freezed
abstract class StoreFailure with _$StoreFailure {
  const factory StoreFailure.serverError() = ServerError;
  const factory StoreFailure.noInternet() = NoInternet;
}
