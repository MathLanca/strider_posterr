import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:strider_posterr/feature/home/data/datasources/home.datasource.dart';
import 'package:strider_posterr/feature/home/data/dto/post.dto.dart';

class HomeDataSourceImp implements HomeDataSource {
  @override
  Future<Either<Exception, List<PostDto>>> fetchPosts() async {
    try {
      List<PostDto> result = [];

      final String response = await rootBundle.loadString('asset\json\posts_mock.json');
      final jsonDecoded = await json.decode(response);

      if(jsonDecoded != null) {
        print('result');
      } 
      return Right(result);
    } catch (e) {
      return Left(Exception());
    }
  }
}
