import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class contant extends StatefulWidget {
  const contant({Key? key}) : super(key: key);

  @override
  State<contant> createState() => _contantState();
}


class _contantState extends State<contant> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 375.w,
              height: 300.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.r),
                  color: Color(0xff222232)),
              child: Image.asset("assets/1.jpg",
                width: 100,
                height: 100,),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),

                    color: Color(0xffffffff)),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(" The Sacred Star of Milos",style: TextStyle(
                      fontSize: 25.sp
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
                  child: Row(
                    children: [
                      Text(" Exp : 64 ",style: TextStyle(
                          fontSize: 25.sp
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
                      Text(" Descriotion :",style: TextStyle(
                          fontSize: 25.sp,
                              fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: 18.h,),
                      Text(" Chasing a runaway alchemist with strange powers, brothers Edward and Alphonse Elric stumble into the squalid valley of the Milos. The Milosians are an oppressed group that seek to reclaim their holy land from Creta: a militaristic country that forcefully annexed their nation. In the eye of the political storm is a girl named Julia Crichton, who emphatically wishes for the Milos to regain their strength and return to being a nation of peace.\n\nBefriending the girl, Edward and Alphonse find themselves in the midst of a rising resistance that involves the use of the very object they have been seeking all along—the Philosopher's Stone. However, their past experiences with the stone cause them reservation, and the brothers are unwilling to help.\n\nBut as they discover the secrets behind Creta's intentions and questionable history, the brothers are drawn into the battle between the rebellious Milos, who desire their liberty, and the Cretan military, who seek absolute power. ",style: TextStyle(
                          fontSize: 25.sp
                      ),),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
