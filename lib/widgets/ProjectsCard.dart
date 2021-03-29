import 'package:flutter/material.dart';
import 'package:personalportfolio/resources/sizeConfig.dart';
import 'package:personalportfolio/widgets/ProjectsTile.dart';

class ProjectsCard extends StatelessWidget {
  static const List<Map<String, String>> projects = [
    {
      "name": "Personal Expanse",
      "url": "https://github.com/virtual424/expanses_app",
    },
    {
      "name": "Meals Recipe",
      "url": "https://github.com/virtual424/Meals-App",
    },
    {
      "name": "LetsWorkout",
      "url": "https://github.com/virtual424/Workout-App",
    },
    {
      "name": "BMI Calculator",
      "url": "https://github.com/virtual424/BMI-Calculator"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        0,
        SizeConfig.defaultSize * 3,
        0,
        SizeConfig.defaultSize * 3,
      ),
      width: SizeConfig.defaultSize * 40,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: projects.map(
            (project) {
              return ProjectsTile(
                project["name"],
                project["url"],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
