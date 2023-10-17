import 'package:flutter/material.dart';
import 'package:pageview_widget/One.dart';
import 'package:pageview_widget/three.dart';
import 'package:pageview_widget/two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
PageController controller =PageController();
 List<Widget> _list = <Widget>[One(),Two(),Three()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        centerTitle: true,
      ),
      body: SafeArea(child: PageView(
        children: _list,
        scrollDirection: Axis.vertical,
        controller: controller,
      )),
    );
  }
}