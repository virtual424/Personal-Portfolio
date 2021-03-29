import 'package:flutter/material.dart';
import '../resources/styles.dart';
import '../resources/sizeConfig.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsTile extends StatelessWidget {
  final String projectName;
  final String projectUrl;

  ProjectsTile(this.projectName, this.projectUrl);

  _launchURL(String url) async {
    var link = url;
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(projectUrl);
      },
      child: Container(
        padding: EdgeInsets.all(SizeConfig.defaultSize * 3),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 5),
          ),
          elevation: 10,
          color: AppTheme.ternaryColor,
          child: Container(
            height: SizeConfig.defaultSize * 15,
            width: SizeConfig.defaultSize * 25,
            padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
            child: Center(
              child: FittedBox(
                child: Text(
                  projectName,
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize * 2.5,
                    color: AppTheme.secondaryTextColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
