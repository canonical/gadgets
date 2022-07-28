import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/views/home_screen.dart';
import 'package:gadgets/views/test_list_screen.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, path: '/', initial: true),
    AutoRoute(page: TestListScreen, path: 'tests/:cid')
  ],
)
class AppRouter extends _$AppRouter {}

Provider<AppRouter> appRouterProvider =
    Provider<AppRouter>((ref) => AppRouter());
