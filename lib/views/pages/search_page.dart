// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {


  String? cityName;

  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search a City"),
        // backgroundColor: Colors.orange,
      ),
      body:  Center(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (data) {
              cityName = data;
            },
            decoration: const InputDecoration(
              hintText: "Enter a City",
              border: OutlineInputBorder(),
              label: Text("search"),
              suffixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(vertical: 32 , horizontal: 24)
            ),
          ),
        ),
      ),
    );
  }
}
