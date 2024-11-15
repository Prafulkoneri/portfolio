import 'package:flutter/material.dart';
import 'package:praful_portfolio/view/certifications/certifications.dart';
import 'package:praful_portfolio/view/intro/about_page.dart';
import 'package:praful_portfolio/view/intro/introduction.dart';
import 'package:praful_portfolio/view/main/main_view.dart';
import 'package:praful_portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      AboutPage(),
      ProjectsView(),
      // Certifications(),
    ]);
  }
}
