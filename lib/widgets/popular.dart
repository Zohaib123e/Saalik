import 'package:flutter/material.dart';
import 'package:wmdb2/discription.dart';
import 'package:wmdb2/utils/text.dart';

class Popular extends StatelessWidget {
  final List pop;

  const Popular({super.key, required this.pop});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Modified_text(text: 'Popular Movies',size: 16, color: Colors.white),
          SizedBox(height: 10,),
          Container(height: 270,
          child: ListView.builder(itemCount: pop.length,
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              return InkWell(
                 onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Description(name: pop[index]['original_title'], description: pop[index]['overview'], bannerurl: 'https://image.tmdb.org/t/p/w500'+pop[index]['backdrop_path'], posterurl: 'https://image.tmdb.org/t/p/w500'+pop[index]['poster_path'], vote: pop[index]['vote_average'].toString(), launch_on: pop[index]['release_date'])));
                 },
                 child: 
                  pop[index]['original_title']!=null?Container(
                  width: 170,
                  

                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(image: DecorationImage(
                          image: NetworkImage(
                            'https://image.tmdb.org/t/p/w500'+pop[index]['poster_path'],


                          ) 
                        )),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Modified_text(text: pop[index]['original_title']!=null?pop[index]['original_title']:'Loading', color: Colors.white, size: 12),
                      ),
                    
                       SizedBox(height: 7,),
                      Container(
                      
                        child: Modified_text(text: '⭐'+pop[index]['vote_average'].toString(), color: Colors.white, size: 10),
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