

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:wmdb2/utils/text.dart';
import 'package:wmdb2/widgets/toprated.dart';
import 'package:wmdb2/widgets/trending.dart';
import 'package:wmdb2/widgets/tv.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];
  final String apikey = '61d24db1d938ea0744db10b085981774';
  final readaccesstoken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2MWQyNGRiMWQ5MzhlYTA3NDRkYjEwYjA4NTk4MTc3NCIsInN1YiI6IjYyZDhmZDk1NGE1MmY4MDA1MWU1YTU3YyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.pF6-1VOh5HZlZfUbNXrdAzjP6t4usmGB7yJk7sHxBE4';
 @override
 void initState(){
  loadmovies();
  super.initState();
 }

   loadmovies()async{
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readaccesstoken),
    logConfig: ConfigLogger(
      showLogs: true,
      showErrorLogs: true
    ));
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPopular();
    
    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
    });
    print(trendingmovies);
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Modified_text(text: 'Movie App', color: Colors.white, size:30)),
        body: ListView(
          children: [
            TV(tv: tv),
            TopRated(toprated: topratedmovies),
            TrendingMovies(trending:trendingmovies)
          ],
        ),
    );
  }
}