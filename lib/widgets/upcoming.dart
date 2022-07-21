import 'package:flutter/material.dart';
import 'package:wmdb2/discription.dart';

import 'package:wmdb2/utils/text.dart';

class UpComing extends StatelessWidget {
  final List coming;

  const UpComing({super.key, required this.coming});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Modified_text(text: 'Upcoming Movies',size: 16, color: Colors.white),
          SizedBox(height: 10,),
          Container(height: 270,
          child: ListView.builder(itemCount: coming.length,
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              return InkWell(
                 onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Description(name: coming[index]['original_title'], description: coming[index]['overview'], bannerurl: 'https://image.tmdb.org/t/p/w500'+coming[index]['backdrop_path'], posterurl: 'https://image.tmdb.org/t/p/w500'+coming[index]['poster_path'], vote: coming[index]['vote_average'].toString(), launch_on: coming[index]['release_date'])));
                 },
                 child: 
                 coming[index]['backdrop_path']!=null?Container(
                  width: 170,
                  
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        
                        decoration: BoxDecoration(image: DecorationImage(
                          image: NetworkImage(
                            'https://image.tmdb.org/t/p/w500'+coming[index]['poster_path'],


                          ) 
                        )),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        child: Modified_text(text: coming[index]['original_title']!=null?coming[index]['original_title']:'Loading', color: Colors.white, size: 12),
                      ),
                       
                     SizedBox(height: 7,),
                      Container(
                      
                        child: Modified_text(text: '⭐'+coming[index]['vote_average'].toString(), color: Colors.white, size: 10),
                      ),
                    ],
                  ),
                 ):Container(),
              );
            }),)
        ],
      ),
    );
  }
}