import 'dart:convert';

import 'package:netflix_clone/controller/api/api_constants.dart';
import 'package:netflix_clone/model/movie.dart';
import 'package:http/http.dart'as http;

class Api{
  Future <List<Movie>>getNowPlaying()async{
  //  fetch from api
 final endPoint = ApiConstants.nowPlayingEndPoint
  + ApiConstants.apiKey;
  
  final response =await http.get(Uri.parse(endPoint
    ));
  if(response.statusCode == 200){
    final  responseData = jsonDecode(response.body)[
      "results"
    ]as List;
    return responseData.map((movie) => Movie.fromJson(movie)).toList();
  }
    return [];
  }
}