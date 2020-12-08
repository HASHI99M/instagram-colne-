import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class PhotoProfile extends StatefulWidget {
  @override
  _PhotoProfileState createState() => _PhotoProfileState();
}

class _PhotoProfileState extends State<PhotoProfile> {
  int indexPage = 0;
  PageController _controller;
  double height = (SizeConfig.screenHeight -
      SizeConfig.appBarSize -
      SizeConfig.statusBarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: kColor3),
                    top: BorderSide(color: kColor3))),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      indexPage = 0;
                      _controller.animateToPage(0,
                          duration: Duration(seconds: 1), curve: Curves.ease);
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/icons/ic_grid.svg',
                          height: 24,
                          color: indexPage == 0 ? Colors.black : kColor3,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: AnimatedContainer(
                          duration: Duration(microseconds: 800),
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: indexPage == 0
                                          ? Colors.black
                                          : Colors.transparent,
                                      width: 1.5))),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      indexPage = 1;
                      _controller.animateToPage(1,
                          duration: Duration(seconds: 1), curve: Curves.ease);
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/icons/ic_list.svg',
                            height: 28,
                            color: indexPage == 1 ? Colors.black : kColor3,
                          )),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: AnimatedContainer(
                          duration: Duration(microseconds: 800),
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: indexPage == 1
                                          ? Colors.black
                                          : Colors.transparent,
                                      width: 1.5))),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: height - 244,
              child: PageView(
                allowImplicitScrolling: true,
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    indexPage = value;
                  });
                },
                children: [
                  Container(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(index.toString());
                      },
                      itemCount: 500,
                    ),
                  ),
                  Text('b'),
                ],
              )),
        ],
      ),
    );
  }

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
