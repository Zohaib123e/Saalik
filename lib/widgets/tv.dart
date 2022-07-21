

import 'package:flutter/material.dart';
import 'package:wmdb2/discription.dart';
import 'package:wmdb2/utils/text.dart';

class TV extends StatelessWidget {
  final List tv;

  const TV({super.key, required this.tv});
  
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Modified_text(text: 'Popular TV Shows',size: 16, color: Colors.white),
          SizedBox(height: 10,),
          Container(height: 200,
          child: ListView.builder(itemCount: tv.length,
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              return InkWell(
                 onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Description(name: tv[index]['original_name'], description: tv[index]['overview'], bannerurl: 'https://image.tmdb.org/t/p/w500'+tv[index]['backdrop_path'], posterurl: 'https://image.tmdb.org/t/p/w500'+tv[index]['poster_path'], vote: tv[index]['vote_average'].toString(), launch_on: tv[index]['first_air_date'])));
                 },
                 child: 
                   
                  tv[index]['backdrop_path']!=null?Container(
                  padding: EdgeInsets.all(5),
                  width: 250,
                  child: Column(
                    children: [
                      Container(
                        
                        width: 250,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                          image: NetworkImage(
                            'https://image.tmdb.org/t/p/w500'+tv[index]['backdrop_path'],


                          ) , fit: BoxFit.cover
                        )),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Modified_text(text: tv[index]['original_name']!=null?tv[index]['original_name']:'Loading', color: Colors.white, size: 12),
                      ),
                     
                       
                      SizedBox(height: 7,),
                      Container(
                      
                        child: Modified_text(text: '⭐'+tv[index]['vote_average'].toString(), color: Colors.white, size: 10),
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