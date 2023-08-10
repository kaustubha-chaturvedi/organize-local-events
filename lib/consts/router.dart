import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:undigitally/screens/post_page.dart';

import 'package:undigitally/screens/home_page.dart';
import 'package:undigitally/screens/notifications_page.dart';
import 'package:undigitally/screens/profile_page.dart';
import 'package:undigitally/screens/chats_page.dart';
import 'package:undigitally/screens/sign_in.dart';
import 'package:undigitally/screens/sign_up.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/sign-in',
    pageBuilder: (context, state) => const MaterialPage(child: SignIn()),
  ),
  GoRoute(
    path: '/sign-up',
    pageBuilder: (context, state) => const MaterialPage(child: SignUp()),
  ),
  GoRoute(
    path: '/',
    pageBuilder: (context, state) => const MaterialPage(child: Home()),
  ),
  GoRoute(
    path: '/chats',
    pageBuilder: (context, state) => const MaterialPage(child: Chats()),
  ),
  GoRoute(
    path: '/post',
    pageBuilder: (context, state) => const MaterialPage(child: Post()),
  ),
  GoRoute(
    path: '/notifications',
    pageBuilder: (context, state) => const MaterialPage(child: Notifications()),
  ),
  GoRoute(
    path: '/profile',
    pageBuilder: (context, state) => const MaterialPage(child: Profile()),
  ),
]);
