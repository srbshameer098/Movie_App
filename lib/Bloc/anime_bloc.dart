

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/Api/anime_api.dart';
import '../Repository/ModelClass/AnimeModel.dart';

part 'anime_event.dart';
part 'anime_state.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  AnimeApi animeApi=AnimeApi();
  late AnimeModel animeModel;
  AnimeBloc() : super(AnimeInitial()) {
    on<FetchAnimeEvent>((event, emit) async{
      emit(AnimeblocLoading());
      try{

        animeModel = await animeApi.getAnime();
        emit(AnimeblocLoaded());
      } catch(e){
        print(e);
        emit(AnimeblocError());}
    });
  }
}
