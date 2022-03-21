import 'package:flutter/material.dart';
import 'package:fulgach/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final company = "Fulgach";
  final author = "tauhedulislam";
  final code = "0001";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fulgach"),
      ),
      body: Center(
        child: Text("Welcome to $company by $author$code"),
      ),
      drawer: const MyDrawer(),
    );
  }
}