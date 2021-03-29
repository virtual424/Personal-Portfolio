import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:personalportfolio/resources/styles.dart';
import 'package:personalportfolio/widgets/ContactSection.dart';
import './widgets/projects_section.dart';
import './widgets/Profile_section.dart';
import './widgets/intro_section.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
            return MaterialApp(
              title: 'Personal Portfolio',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: MyHomePage(),
            );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Profile(),
              IntroCard(),
              ProjectsSection(),
              ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}
