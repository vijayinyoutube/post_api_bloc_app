import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../BusinessLogic/bloc/homepage_bloc.dart';
import '../Widgets/search_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLOC and POST API"),
      ),
      body: BlocConsumer<HomepageBloc, HomepageState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is HomepageLoaded) {
            return buildInitialLayout();
          } else if (state is HomepageLoading) {
            return buildInitialLayout();
          } else {
            return buildInitialLayout();
          }
        },
      ),
    );
  }

  Widget buildInitialLayout() => const Center(
        child: SearchButtonBuilder(),
      );
}
