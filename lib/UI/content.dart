import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class contant extends StatefulWidget {
  final String image;
  final String title;
  final String episodes;
  final String synopsis;
  final String ranking;
  final String genres;
  final String link;
  const contant({Key? key,required this.image, required this.title, required this.episodes, required this.synopsis, required this.ranking, required this.genres, required this.link}) : super(key: key);

  @override
  State<contant> createState() => _contantState();
}


class _contantState extends State<contant> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color(0xff7e6d61),

      appBar: AppBar(

        backgroundColor: Colors.black,
        title: Text(widget.title,style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white
        ),),
      ),
      body:
      SingleChildScrollView(
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 340.w,
                  height: 300.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff222232)),
                  child: Image.network(widget.image,
                    width: 100,
                    height: 100,),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 370.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),

                      color: Color(0xffffffff)),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.title,style: TextStyle(
                          fontSize: 24.sp,
                              fontWeight: FontWeight.w600
                    ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),

                      color: Color(0xffffffff)),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Exp : ",style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600
                        ),),
                        Text(widget.episodes,style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900
                        ),),
                      ],
                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),

                      color: Color(0xffffffff)),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Ranking : ",style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600
                        ),),
                        Text(widget.ranking,style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900
                        ),),
                      ],
                    ),
                  ),
                ),
              ),






              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),

                      color: Color(0xffffffff)),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Link : ",style: TextStyle(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w600
                        ),),
                        Text(widget.link,style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.blueAccent
                        ),),
                      ],
                    ),
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),

                      color: Color(0xffffffff)),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Genres : ",style: TextStyle(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w600
                        ),),
                        Text(widget.genres,style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900
                        ),),
                      ],
                    ),
                  ),
                ),
              ),




              SizedBox(height: 10.h,),

              Container(
                width: 375.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),

                    color: Color(0xffffffff)),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" Descriotion :",style: TextStyle(
                          fontSize: 25.sp,
                              fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: 18.h,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Text(widget.synopsis    ,style: TextStyle(
                            fontSize: 20.sp,
                          color: Colors.grey.shade900

                        ),),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
