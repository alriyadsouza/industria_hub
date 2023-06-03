import 'package:flutter/material.dart';
import 'package:industria_hub/fitness_app/ui_view/QA.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/fitness_app/tab_1.png',
      selectedImagePath: 'assets/fitness_app/tab_1s.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/fitness_app/tab_2.png',
      selectedImagePath: 'assets/fitness_app/tab_2s.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/fitness_app/tab_3.png',
      selectedImagePath: 'assets/fitness_app/tab_3s.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/fitness_app/tab_4.png',
      selectedImagePath: 'assets/fitness_app/tab_4s.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Icons Example'),
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: TabIconData.tabIconsList.length,
          itemBuilder: (context, index) {
            final tabIcon = TabIconData.tabIconsList[index];

            return InkWell(
              onTap: () {
                if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QAPage()),
                  );
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    tabIcon.isSelected
                        ? tabIcon.selectedImagePath
                        : tabIcon.imagePath,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 8),
                  Text('Tab ${index + 1}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
