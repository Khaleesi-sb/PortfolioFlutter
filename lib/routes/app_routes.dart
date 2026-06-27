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
      GoRoute(
        path: Routes.home,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: HomePage()),
      ),
      GoRoute(
        path: Routes.skills,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: SkillsPage()),
      ),
      GoRoute(
        path: Routes.projects,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: ProjectPage()),
      ),
      GoRoute(
        path: Routes.contact,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: ContactPage()),
      ),
    ],
  );
}
