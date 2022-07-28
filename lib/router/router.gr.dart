// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeScreen());
    },
    TestListScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TestListScreenRouteArgs>(
          orElse: () =>
              TestListScreenRouteArgs(cid: pathParams.getString('cid')));
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: TestListScreen(key: args.key, cid: args.cid));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeScreenRoute.name, path: '/'),
        RouteConfig(TestListScreenRoute.name, path: 'tests/:cid')
      ];
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [TestListScreen]
class TestListScreenRoute extends PageRouteInfo<TestListScreenRouteArgs> {
  TestListScreenRoute({Key? key, required String cid})
      : super(TestListScreenRoute.name,
            path: 'tests/:cid',
            args: TestListScreenRouteArgs(key: key, cid: cid),
            rawPathParams: {'cid': cid});

  static const String name = 'TestListScreenRoute';
}

class TestListScreenRouteArgs {
  const TestListScreenRouteArgs({this.key, required this.cid});

  final Key? key;

  final String cid;

  @override
  String toString() {
    return 'TestListScreenRouteArgs{key: $key, cid: $cid}';
  }
}
