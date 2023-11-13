import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/api/api_constants.dart';
import 'package:netflix_clone/model/movie.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<Movie>> getNowPlaying() async {
    //  fetch from api
    final endPoint = ApiConstants.nowPlayingEndPoint + ApiConstants.apiKey;

    final response = await http.get(Uri.parse(endPoint));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["results"] as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
    }
    return [];
  }

  Future<List<Movie>>trendingNow ()async{
    final endPoint = ApiConstants.trendingNowEndPoint +ApiConstants.apiKey;
    final response = await http.get(Uri.parse(endPoint));
    if(response.statusCode == 200){
      final responseData = jsonDecode(response.body)["results"]as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
      
    }
    return[];
  }
  Future<List<Movie>>tenseDramas ()async{
    final endPoint = ApiConstants.tenseDramasEndPoint + ApiConstants.apiKey;
    final response = await http.get(Uri.parse(endPoint));
    if(response.statusCode == 200){
      final responseData = jsonDecode(response.body)["results"]as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
    }
    return[];
  }

  Future<List<Movie>>upcoming()async{
    final endPoint = ApiConstants.upcomingEndPoint + ApiConstants.apiKey;
    final response = await http.get(Uri.parse(endPoint));
    if(response.statusCode == 200){
      final responseData = jsonDecode(response.body)["results"]as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
    }
    return [];
  }
  Future<List<Movie>>topTen()async{
    final endPoint = ApiConstants.topTenEndPoint +ApiConstants.apiKey;
    final response =  await http.get(Uri.parse(endPoint));
    if(response.statusCode ==200){
     final responseData = jsonDecode(response.body)["results"]as List;
     return responseData.map((movie) => Movie.fromJson(movie)).toList();
    }
    return [];
  }
  Future<List<Movie>>searchApi(String movie)async{
    final endPoint = '${ApiConstants.searchApi}${ApiConstants.apiKey}&query=$movie';
    final response = await http.get(Uri.parse(endPoint));
    if(response.statusCode ==200){
      final responseData = jsonDecode(response.body)["results"]as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
    }
    return [];
  }

}
