abstract class HomePageState {}

class HomePageInitial extends HomePageState {}
class HomePageIndexUpdated extends HomePageState {
  final int activeindex;

  HomePageIndexUpdated(this.activeindex);
}
class HomePageSetIndex extends HomePageState{

}
