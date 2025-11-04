import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/projectDetailScreen.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';


class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProjectDetailScreen(project: widget.project),
            ),
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          transform: Matrix4.translationValues(0, isHovered ? -10 : 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgColor,
            boxShadow: [
              BoxShadow(
                color: Colors.pink.withOpacity(isHovered ? 0.4 : 0.2),
                offset: const Offset(-4, 4),
                blurRadius: isHovered ? 20 : 10,
              ),
              BoxShadow(
                color: Colors.blue.withOpacity(isHovered ? 0.4 : 0.2),
                offset: const Offset(4, 4),
                blurRadius: isHovered ? 20 : 10,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Project Thumbnail Image
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey[900],
                  child: Image.asset(
                    widget.project.thumbnailImage,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[800],
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

              // Project Info
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Project Name
                      Text(
                        widget.project.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                      const SizedBox(height: 8),

                      // Short Description
                      Expanded(
                        child: Text(
                          widget.project.shortDescription,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14,
                            height: 1.5,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      const SizedBox(height: 12),

                      // View Details Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Colors.pink, Colors.blue],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'View Details',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}