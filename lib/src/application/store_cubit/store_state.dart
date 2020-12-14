part of 'store_cubit.dart';

@freezed
abstract class StoreState with _$StoreState {
  const factory StoreState.initial() = Initial;
  const factory StoreState.loading() = Loading;
  const factory StoreState.success(StoreModel store) = Success;
  const factory StoreState.failure(StoreFailure failure) = Failure;
}
