import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practica/features/home_view/presentation/bloc/home_page_bloc.dart';
import 'package:flutter_bloc_practica/features/home_view/presentation/pages/children/widgets/custom_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(),
      child: const _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomePageBloc, HomePageState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: _Body()
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        if (state is ChangePageState) {
          return Scaffold(
            appBar: AppBar(title: Text('Mi App'),),
            body: state.currentPage,
            bottomNavigationBar: CustomBottomNavigationBar(
                indexSelected: state.selectedIndex
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
