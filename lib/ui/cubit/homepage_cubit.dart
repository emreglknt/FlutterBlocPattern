import 'package:bloc_pattern_kullanimi/data/repo/math_calc_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int>{

  HomePageCubit():super(0);

  var mrepo = MatCalcRepository();

  void toplama(String alinanSayi1,String alinanSayi2){
    int sonuc = mrepo.toplama(alinanSayi1, alinanSayi2);
    emit(sonuc); //tetikleme ve gönderme
  }


  void carpma(String alinanSayi1,String alinanSayi2){
    int carpma = mrepo.carpma(alinanSayi1, alinanSayi2);
    emit(carpma); //tetikleme ve gönderme
  }



}