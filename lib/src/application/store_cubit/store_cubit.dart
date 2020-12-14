import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:injectable/injectable.dart';
import 'package:kenya_it_hardware/common/failures/store_failure.dart';
import 'package:kenya_it_hardware/src/data/store/store_model.dart';
import 'package:kenya_it_hardware/src/data/store/store_repository.dart';

part 'store_state.dart';
part 'store_cubit.freezed.dart';

@injectable
class StoreCubit extends Cubit<StoreState> {
  StoreCubit(this._iStoreFacade) : super(StoreState.initial());

  final IStoreFacade _iStoreFacade;

  void getStore() async {
    emit(StoreState.loading());
    final failureOrSuccess = await _iStoreFacade.getStore();
    failureOrSuccess.fold((failure) => emit(StoreState.failure(failure)),
        (store) => emit(StoreState.success(store)));
  }
}
