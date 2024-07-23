part of 'home_page_bloc.dart';

sealed class HomePageEvent extends Equatable {
  const HomePageEvent();
}

final class InitialEvent extends HomePageState {
  const InitialEvent();

  @override
  List<Object> get props => [];
}

final class ChangePageEvent extends HomePageEvent {
  const ChangePageEvent({
    required this.page,
    required this.index,
  });
  final Widget page;
  final int index;

  @override
  List<Object> get props => [page, index];
}

