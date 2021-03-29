import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../resources/styles.dart';
import '../resources/strings.dart';
import '../resources/images.dart';
import '../resources/sizeConfig.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  Widget buildIcon(IconData icon, String url) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Card(
        elevation: 10,
        color: AppTheme.secondaryColor,
        child: Icon(
          icon,
          color: AppTheme.secondaryTextColor,
        ),
      ),
    );
  }

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
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize * 0.4),
      child: Card(
        elevation: 10,
        child: Container(
          color: AppTheme.secondaryColor,
          padding: EdgeInsets.all(SizeConfig.defaultSize * 0.8),
          height: SizeConfig.defaultSize * 52,
          width: SizeConfig.defaultSize * 40,
          child: Stack(
            children: [
              Positioned(
                left: SizeConfig.defaultSize * 7,
                bottom: SizeConfig.defaultSize * 3,
                child: Container(
                  height: SizeConfig.defaultSize * 60,
                  width: SizeConfig.defaultSize * 40,
                  child: Image.asset(
                    images.profileImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: SizeConfig.defaultSize * 12,
                child: Container(
                  width: SizeConfig.defaultSize * 24,
                  child: FittedBox(
                    child: Text(
                      strings.profileName,
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize * 6,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryTextColor,
                      ),
                      // softWrap: true,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: SizeConfig.defaultSize * 30,
                child: Row(
                  children: [
                    buildIcon(FontAwesomeIcons.instagram, strings.instagramUrl),
                    SizedBox(width: SizeConfig.defaultSize * 1.5),
                    buildIcon(FontAwesomeIcons.linkedin, strings.linkedInUrl),
                    SizedBox(width: SizeConfig.defaultSize * 1.5),
                    buildIcon(FontAwesomeIcons.github, strings.gitHubUrl),
                    SizedBox(width: SizeConfig.defaultSize * 1.5),
                    buildIcon(FontAwesomeIcons.facebook, strings.facebookUrl),
                    SizedBox(width: SizeConfig.defaultSize * 1.5),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
