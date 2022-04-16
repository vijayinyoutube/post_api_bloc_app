import 'package:flutter/material.dart';
import 'package:post_api_bloc_app/Data/Models/homepage_model.dart';

class ListTileBuilder extends StatelessWidget {
  const ListTileBuilder(
    this.data, {
    Key? key,
  }) : super(key: key);

  final HomePageModel data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        data.name,
        style: const TextStyle(
            color: Colors.blue, fontSize: 40.00, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        data.job,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 27.00,
        ),
      ),
      trailing: Text(
        "ID: ${data.id}",
        style: const TextStyle(
            color: Colors.red, fontSize: 27.00, fontWeight: FontWeight.bold),
      ),
    );
  }
}
