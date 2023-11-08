import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/content.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List<String> img = [
  'assets/img-1.jpg',
  'assets/1.jpg',
  'assets/img-3.jpg',
  'assets/img-1.jpg',
  'assets/1.jpg',
  'assets/img-3.jpg',
  'assets/img-1.jpg',
  'assets/1.jpg',
  'assets/img-3.jpg',
  'assets/img-1.jpg',
  'assets/1.jpg',
  'assets/img-3.jpg',

];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: const Text(' Movie App ')),elevation: 3,
        backgroundColor: Color(0xffc56d6d),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.sp,

          shrinkWrap: true,
          children:
            List.generate(img.length, (index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_)=>contant()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),


                    ),
                   child: Image.asset(img[index],width: 50,
                   height: 50,),

                  ),
                ),
              );
            })

        )
      ),
    );
  }
}
