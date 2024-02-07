import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

import '../model/azkar_model.dart';
import '../service/dio.dart';
part 'azkar_state.dart';


class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(AzkarInitial());

  TimeData? AzkarModel;
  static AzkarCubit get (context) =>  BlocProvider.of(context);
  void getData(){

    DioHelper.dio.get('http://api.aladhan.com/v1/timingsByCity',
        queryParameters: {
      //city=Dubai&country=United%20Arab%20Emirates&method=8
          'city' : 'Cairo',
          'country' : 'Eygpt',
          'method' :'8',
        }).then( (value){
      print(value.statusCode);
      var data =jsonDecode(value.data);
      AzkarModel=TimeData.fromJson(data);


      emit(change());


    }
    ).catchError((onError){
      print(onError);
    });
  }


}
