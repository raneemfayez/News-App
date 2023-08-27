import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/Data/Models/all_news/all_news.dart';
import 'package:news_app/Data/Repositories/all_news_repo.dart';

part 'all_news_state.dart';

class AllNewsCubit extends Cubit<AllNewsState> {
  AllNewsCubit() : super(AllNewsInitial());

  getAllNews() {
    emit(GetNewsLoading());
    AllNewsRepo().getAllNews().then((value) {
      if (value != null) {
        emit(GetNewsSuccess(response: value));
      } else {
        emit(GetNewsError());
      }
    });
  }
}
