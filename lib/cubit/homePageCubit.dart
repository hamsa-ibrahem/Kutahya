
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'HomePageState.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial()) {
  activeindex = 3;
  index = "3"; }



  static HomePageCubit get(context) => BlocProvider.of(context);

  int activeindex = 0;
  String index = " ";
  List iconExtrafeatures = [
    "assets/images/map.svg",
    "assets/images/volume-high.svg",
    "assets/images/tire-svgrepo-com 1.svg",
    "assets/images/camera-svgrepo-com (1) 1.svg"
  ];
  List textExtrafeatures = [
    "Navigation system",
    "Loud sound system",
    "Excellent rim",
    "Car camera"
  ];

  updateSelectedIndex(int index) {
    activeindex = index;
    emit(HomePageIndexUpdated(activeindex));
  }
  int index1 =0 ;
   setIndex(int newIndex) {
     index1 = newIndex;
    emit(HomePageSetIndex());
  }


}