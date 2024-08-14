import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:pocket_grizzly/layout.dart';
import 'package:pocket_grizzly/routes/home_page.dart';
import 'package:pocket_grizzly/routes/signup_page.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

final GoRouter router = GoRouter(
  // redirect: (context, state) {
  //   final user = Supabase.instance.client.auth.currentUser;
  //   if (user == null) {
  //     return '/sign-up';
  //   }
  //   return '/';
  // },
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        final fullscreenPages = ['/sign-up', '/sign-in'];
        final isFullscreen = fullscreenPages.contains(state.path);
        Logger().d(isFullscreen);
        return Layout(fullscreen: isFullscreen, child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/sign-up',
          builder: (context, state) => const SignupPage(),
        ),
      ],
    ),
  ],
);
