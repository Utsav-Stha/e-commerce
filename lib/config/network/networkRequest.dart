import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_commerce/config/network/apiEndpoints.dart';
import 'package:e_commerce/feature/products/allProductsModel.dart';
import 'package:flutter/cupertino.dart';



class NetworkRequest {
  static late Dio dio;

  NetworkRequest() {
    dio = Dio(baseOptions());

  }

  BaseOptions baseOptions() {
    return BaseOptions(
      baseUrl: ApiEndPoints.baseUrl,
      headers: {'Accept': 'application/json'},
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    );
  }

  static Future<List<dynamic>?> getAllProduct() async {
    try {
      final allProductResponse = await dio.get(ApiEndPoints.getAllProducts);

      print(allProductResponse.data);


      print('Status code: ${allProductResponse.statusCode}');
      return allProductResponse.data;
      // return AllProductsModel.fromJson(allProductResponse.data);
    } catch (e) {
      print('Error in getAllProduct: $e');
      return null;
    }
  }

  Future<void> getOneProduct({required int index}) async {
    try {
      if (dio == null) {
        throw Exception("Dio instance not initialized.");
      }

      final oneProductResponse = await dio.get(ApiEndPoints.getOneProduct);
      print('Status code: ${oneProductResponse.statusCode}');
      print(oneProductResponse.data[index]);
    } catch (e) {
      print('Error in getOneProduct: $e');
    }
  }
}
