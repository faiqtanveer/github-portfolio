import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectDetailScreen extends StatelessWidget {
  final Project project;

  const ProjectDetailScreen({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: bgColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                project.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    project.thumbnailImage,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[900],
                        child: const Icon(
                          Icons.image_outlined,
                          size: 100,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          bgColor.withOpacity(0.7),
                          bgColor,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(
                Responsive.isMobile(context) ? defaultPadding : defaultPadding * 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Technologies
                  if (project.technologies.isNotEmpty) ...[
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: project.technologies.map((tech) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.pink, Colors.blue],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            tech,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: defaultPadding * 2),
                  ],

                  // Detailed Description
                  const Text(
                    'About Project',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Text(
                    project.detailedDescription,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                      height: 1.8,
                    ),
                  ),

                  const SizedBox(height: defaultPadding * 2),

                  // Screenshots Section
                  if (project.screenshots.isNotEmpty) ...[
                    const Text(
                      'Screenshots',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Responsive.isMobile(context) ? 1 :
                        Responsive.isTablet(context) ? 2 : 3,
                        crossAxisSpacing: defaultPadding,
                        mainAxisSpacing: defaultPadding,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: project.screenshots.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            _showImageDialog(context, project.screenshots[index]);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey[800]!,
                                width: 2,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset(
                                project.screenshots[index],
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.grey[900],
                                    child: const Icon(
                                      Icons.image_outlined,
                                      size: 60,
                                      color: Colors.grey,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: defaultPadding * 2),
                  ],

                  // GitHub Button
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        launchUrl(Uri.parse(project.githubLink));
                      },

                      label: const Text(
                        'View Site',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        side: const BorderSide(
                          width: 2,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: defaultPadding * 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.black,
        child: Stack(
          children: [
            InteractiveViewer(
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 30),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}