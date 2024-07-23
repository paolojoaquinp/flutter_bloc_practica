import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practica/features/home_view/presentation/pages/children/home_dashboard/page/home_dashboard_screen.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(ChangePageState(currentPage: const HomeDashboardScreen(), selectedIndex: 0)) {
    on<HomePageEvent>((event, emit) {
    });
    on<ChangePageEvent>(_onChangePageEvent);
  }

  void _onChangePageEvent(ChangePageEvent event, Emitter<HomePageState> emit) {
    emit(ChangePageState(
      currentPage: event.page,
      selectedIndex: event.index,
    ));
  }
}
