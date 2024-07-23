part of 'home_page_bloc.dart';

sealed class HomePageState extends Equatable {
  const HomePageState();
}

class HomePageInitial extends HomePageState {
  const HomePageInitial();

  @override
  List<Object> get props => [];
}

class ChangePageState extends HomePageState {
  const ChangePageState({
    required this.currentPage,
    required this.selectedIndex,
  });

  final Widget currentPage;
  final int selectedIndex;

  @override
  List<Object> get props => [currentPage, selectedIndex];
}
