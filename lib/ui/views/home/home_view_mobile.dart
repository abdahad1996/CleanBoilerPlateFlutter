
/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_starter_template/ui/shared/widgets/app_drawer/app_drawer.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(250, 690),
        builder: () => Scaffold(
              key: _scaffoldKey,
              drawer: AppDrawer(),
              body: Column(
                children: <Widget>[
                  Container(
                    width: ScreenUtil().setWidth(40),
                    height: ScreenUtil().setHeight(60),
                    color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: IconButton(
                        icon: Icon(Icons.menu, size: 30),
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[AppDrawer()],
      ),
    );
  }
}
