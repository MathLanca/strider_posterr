import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:strider_posterr/feature/home/data/datasources/home.datasource.dart';
import 'package:strider_posterr/feature/home/data/dto/post.dto.dart';

class HomeDataSourceImp implements HomeDataSource {
  @override
  Future<Either<Exception, List<PostDto>>> fetchPosts() async {
    try {
      Future.delayed(Duration(seconds: 5));
      List<PostDto> result = [];

      final String response = await rootBundle.loadString('asset/json/post.json');
      final jsonDecoded = await json.decode(response);

      if(jsonDecoded != null) {
        jsonDecoded.forEach((element) { result.add(PostDto.fromJson(element));});
      } 
      return Right(result);
    } catch (e) {
      return Left(Exception());
    }
  }
}
