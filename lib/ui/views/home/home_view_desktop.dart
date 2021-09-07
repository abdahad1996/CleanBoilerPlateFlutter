import 'package:flutter/material.dart';
import 'package:stacked_starter_template/ui/shared/widgets/app_drawer/app_drawer.dart';

class HomeViewDesktop extends StatelessWidget {
  const HomeViewDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(
        child: Container(
          color: Colors.black,
        ),
      ),
      AppDrawer()
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait
          ? Column(children: children)
          : Row(children: children.reversed.toList()),
    );
  }
}
