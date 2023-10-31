// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    TestListScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TestListScreen(),
      );
    }
  };
}

/// generated route for
/// [TestListScreen]
class TestListScreenRoute extends PageRouteInfo<void> {
  const TestListScreenRoute({List<PageRouteInfo>? children})
      : super(
          TestListScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestListScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
