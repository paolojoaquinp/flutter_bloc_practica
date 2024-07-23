import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practica/features/home_view/presentation/bloc/home_page_bloc.dart';
import 'package:flutter_bloc_practica/features/home_view/presentation/pages/children/home_dashboard/page/home_dashboard_screen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.indexSelected,
  });

  final int indexSelected;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: indexSelected,
        onTap: (index) {
          late Widget page;
          switch (index) {
            case 0:
              page = const HomeDashboardScreen();
              break;
            case 1:
              page = Container(color: Colors.yellow);
              break;
            case 2:
              page = Container(color: Colors.green);
              break;
            case 3:
              page = Container(color: Colors.black);
              break;
          }
          context
              .read<HomePageBloc>()
              .add(ChangePageEvent(page: page, index: index));
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.query_stats),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          ),
        ]);
  }
}
