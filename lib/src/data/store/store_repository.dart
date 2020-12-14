import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kenya_it_hardware/common/failures/store_failure.dart';
import 'package:kenya_it_hardware/src/data/store/store_model.dart';
import 'package:http/http.dart' as http;

abstract class IStoreFacade {
  Future<Either<StoreFailure, StoreModel>> getStore();
}

@LazySingleton(as: IStoreFacade)
class StoreFacade implements IStoreFacade {
  StoreFacade();

  @override
  Future<Either<StoreFailure, StoreModel>> getStore() async {
    try {
      StoreModel store;
      const String BASE_URL =
          'https://www.ajiraconnect.com/mobiletest/json.php';
      var response = await http.get(BASE_URL);
      if (response.statusCode == 200) {
        store = StoreModel.fromJson(json.decode(response.body));
      }
      return right(store);
    } on PlatformException catch (e) {
      return left(StoreFailure.serverError());
    } on SocketException catch (e) {
      return left(StoreFailure.noInternet());
    }
  }
}
