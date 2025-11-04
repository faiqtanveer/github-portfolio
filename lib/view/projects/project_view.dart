import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/model/project_model.dart';
import 'components/projectCard.dart';
import 'components/title_text.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(height: defaultPadding),

          const TitleText(prefix: 'Latest', title: 'Projects'),

          const SizedBox(height: defaultPadding),

          // Projects Grid
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobile(context) ? defaultPadding : defaultPadding * 2,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: _getCrossAxisCount(context),
                childAspectRatio: _getAspectRatio(context),
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
              ),
              itemCount: projectList.length,
              itemBuilder: (context, index) {
                return ProjectCard(project: projectList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  int _getCrossAxisCount(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return 1;
    } else if (Responsive.isTablet(context)) {
      return 2;
    } else if (Responsive.isDesktop(context)) {
      return 3;
    } else {
      return 4; // Extra large screens
    }
  }

  double _getAspectRatio(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return 0.75;
    } else if (Responsive.isTablet(context)) {
      return 0.8;
    } else {
      return 0.85;
    }
  }
}