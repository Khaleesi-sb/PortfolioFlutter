import 'package:go_router/go_router.dart';

import '../features/contact/presentation/screen/contact_page.dart';
import '../features/home/presentation/screens/home_page.dart';
import '../features/projects/presentation/screens/project_page.dart';
import '../features/skills/presentation/screens/skills_page.dart';

class Routes {
  static const String home = '/';
  // static const String about = '/about';
  static const String skills = '/skills';
  static const String projects = '/projects';
  // static const String blogs = '/blogs';
  static const String contact = '/contact';
}

class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(path: Routes.home, builder: (context, state) => const HomePage()),
      GoRoute(
        path: Routes.skills,
        builder: (context, state) => const SkillsPage(),
      ),
      GoRoute(path: Routes.projects, builder: (context, state) => const ProjectPage()),
      GoRoute(path: Routes.contact, builder: (context, state) => const ContactPage()),
    ],
  );
}
