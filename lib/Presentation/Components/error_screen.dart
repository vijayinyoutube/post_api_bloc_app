import 'package:flutter/material.dart';
import 'package:post_api_bloc_app/Presentation/Components/spacer.dart';

class ErrorScreenBuilder extends StatelessWidget {
  const ErrorScreenBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Error!",
            style: TextStyle(color: Colors.red,fontSize: 50.00),
          ),
          HeightSpacer(myHeight: 15.00),
          Text(
            "Please refresh the page.",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
