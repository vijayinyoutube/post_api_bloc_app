import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../BusinessLogic/bloc/homepage_bloc.dart';
import '../../../Declarations/Global/constants.dart';

class SearchButtonBuilder extends StatelessWidget {
  const SearchButtonBuilder(
      {Key? key,
      required this.focusNode,
      required this.name,
      required this.job})
      : super(key: key);

  final FocusNode focusNode;
  final TextEditingController name;
  final TextEditingController job;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.blue,
          primary: Colors.blue,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: kBorderRadius,
          ),
        ),
        onPressed: () => BlocProvider.of<HomepageBloc>(context)
            .add(SendData(name.text, job.text)),
        child: Text(
          "Search",
          style: TextStyle(color: Colors.white, fontSize: kfontSize),
        ),
      ),
    );
  }
}
