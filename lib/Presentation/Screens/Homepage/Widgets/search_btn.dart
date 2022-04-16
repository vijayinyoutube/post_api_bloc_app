import 'package:flutter/material.dart';
import 'package:post_api_bloc_app/Presentation/Declarations/Global/constants.dart';

class SearchButtonBuilder extends StatelessWidget {
  const SearchButtonBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding * 2,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.blue,
          primary: Colors.blue,
          minimumSize: const Size(double.infinity, 50),
          padding: const EdgeInsets.symmetric(horizontal: 100),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        onPressed: () {},
        child: const Text("Search",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
