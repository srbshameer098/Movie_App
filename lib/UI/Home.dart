import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/UI/content.dart';

import '../Bloc/anime_bloc.dart';
import '../Repository/ModelClass/AnimeModel.dart';

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
late AnimeModel response;
class _HomeState extends State<Home> {
  @override
  void initState() {
    BlocProvider.of<AnimeBloc>(context).add(FetchAnimeEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text(' Movie App ')), elevation: 3,
        backgroundColor: Color(0xffc56d6d),
      ),
      body: SafeArea(
          child: BlocBuilder<AnimeBloc, AnimeState>(
            builder: (context, state) {

              if(state is AnimeblocLoading) {
                return Center(child: CircularProgressIndicator());
              }
              if(state is AnimeblocError){
                return Center(child: Text("ERROR"),);
              }
              if (state is AnimeblocLoaded){

              response= BlocProvider.of<AnimeBloc>(context).animeModel;

              return GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.sp,

                  shrinkWrap: true,
                  children:
                  List.generate(response.data!.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(
                              MaterialPageRoute(builder: (_) => contant(image: response.data![index].image.toString(),
                                title: response.data![index].title.toString(),
                                episodes: response.data![index].episodes.toString(),
                                synopsis: response.data![index].synopsis.toString(),
                                ranking: response.data![index].ranking.toString(),
                                genres: response.data![index].genres.toString(),
                                link: response.data![index].link.toString(),)));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),


                          ),
                          child: Image.network(response.data![index].image.toString(), width: 40,
                            height: 50,),

                        ),
                      ),
                    );
                  })

              );}else{
                return SizedBox();
              }
            },
          )
      ),
    );
  }
}
