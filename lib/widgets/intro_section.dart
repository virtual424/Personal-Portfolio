import 'package:flutter/material.dart';
import '../resources/styles.dart';
import '../resources/strings.dart';
import '../resources/sizeConfig.dart';

class IntroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize * 0.5),
      child: Card(
        color: AppTheme.primaryColor,
        elevation: 3,
        child: Container(
          height: SizeConfig.defaultSize * 25,
          width: SizeConfig.defaultSize * 42,
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 1.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    strings.intro,
                    style: TextStyle(
                      color: AppTheme.primaryTextColor,
                      fontSize: SizeConfig.defaultSize * 2,
                      letterSpacing: SizeConfig.defaultSize * 0.4,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize * 4,
                ),
                FittedBox(
                  child: Text(
                    strings.introDescription,
                    style: TextStyle(
                      color: AppTheme.secondaryTextColor,
                      fontSize: SizeConfig.defaultSize * 1.9,
                      letterSpacing: SizeConfig.defaultSize * 0.3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
