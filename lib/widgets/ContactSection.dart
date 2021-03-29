import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../resources/styles.dart';
import '../resources/strings.dart';
import '../resources/sizeConfig.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.primaryColor,
      elevation: 20,
      child: Container(
        height: SizeConfig.defaultSize * 25,
        width: SizeConfig.defaultSize * 42,
        padding: EdgeInsets.all(SizeConfig.defaultSize * 0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                strings.gotAProject,
                style: TextStyle(
                  color: AppTheme.secondaryTextColor,
                  fontSize: SizeConfig.defaultSize * 3,
                ),
              ),
            ),
            FittedBox(
              child: Text(
                strings.letsTalk,
                style: TextStyle(
                  color: AppTheme.secondaryTextColor,
                  fontSize: SizeConfig.defaultSize * 3,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppTheme.ternaryTextColor,
                  ),
                  borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 2),
                ),
                margin:
                    EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.defaultSize*1.5),
                  child: FittedBox(
                    child: Text(
                      strings.email,
                      style: TextStyle(
                        color: AppTheme.ternaryTextColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.instagram,
                  color: AppTheme.primaryTextColor,
                ),
                SizedBox(width: SizeConfig.defaultSize * 1.5),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: AppTheme.primaryTextColor,
                ),
                SizedBox(width: SizeConfig.defaultSize * 1.5),
                Icon(
                  FontAwesomeIcons.linkedin,
                  color: AppTheme.primaryTextColor,
                ),
                SizedBox(width: SizeConfig.defaultSize * 1.5),
                Icon(
                  FontAwesomeIcons.github,
                  color: AppTheme.primaryTextColor,
                ),
                SizedBox(width: SizeConfig.defaultSize * 1.5),
                Icon(
                  FontAwesomeIcons.facebook,
                  color: AppTheme.primaryTextColor,
                ),
                SizedBox(width: SizeConfig.defaultSize * 1.5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
