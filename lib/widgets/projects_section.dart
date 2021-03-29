import 'package:flutter/material.dart';
import 'package:personalportfolio/resources/styles.dart';
import '../widgets/ProjectsCard.dart';
import '../resources/strings.dart';
import '../resources/sizeConfig.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize * 50,
      width: SizeConfig.defaultSize * 42,
      color: AppTheme.ternaryColor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          SizeConfig.defaultSize,
          SizeConfig.defaultSize * 7,
          SizeConfig.defaultSize,
          SizeConfig.defaultSize,
        ),
        child: Column(
          children: [
            FittedBox(
              child: Text(
                strings.creativeWorks,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.defaultSize * 3.2,
                ),
              ),
            ),
            FittedBox(
              child: Text(
                strings.selectedProjects,
                style: TextStyle(
                  color: Colors.yellow[400],
                  fontSize: SizeConfig.defaultSize * 3.2,
                ),
              ),
            ),
            ProjectsCard(),
          ],
        ),
      ),
    );
  }
}
