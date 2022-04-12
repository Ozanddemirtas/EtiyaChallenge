// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:nbastatsetiya/models/stat_model.dart' as _i5;
import 'package:nbastatsetiya/pages/nba_stats_detail_page.dart' as _i2;
import 'package:nbastatsetiya/pages/nba_stats_main_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NbaStatMainPageRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(routeData: routeData, child: const _i1.NbaStatMainPage());
    },
    NbaStatDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<NbaStatDetailPageRouteArgs>();
      return _i3.AdaptivePage<dynamic>(routeData: routeData, child: _i2.NbaStatDetailPage(key: args.key, nbaStatRank: args.nbaStatRank));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [_i3.RouteConfig(NbaStatMainPageRoute.name, path: '/'), _i3.RouteConfig(NbaStatDetailPageRoute.name, path: '/nba-stat-detail-page')];
}

/// generated route for
/// [_i1.NbaStatMainPage]
class NbaStatMainPageRoute extends _i3.PageRouteInfo<void> {
  const NbaStatMainPageRoute() : super(NbaStatMainPageRoute.name, path: '/');

  static const String name = 'NbaStatMainPageRoute';
}

/// generated route for
/// [_i2.NbaStatDetailPage]
class NbaStatDetailPageRoute extends _i3.PageRouteInfo<NbaStatDetailPageRouteArgs> {
  NbaStatDetailPageRoute({_i4.Key? key, required _i5.NbaStatModel nbaStatRank})
      : super(NbaStatDetailPageRoute.name, path: '/nba-stat-detail-page', args: NbaStatDetailPageRouteArgs(key: key, nbaStatRank: nbaStatRank));

  static const String name = 'NbaStatDetailPageRoute';
}

class NbaStatDetailPageRouteArgs {
  const NbaStatDetailPageRouteArgs({this.key, required this.nbaStatRank});

  final _i4.Key? key;

  final _i5.NbaStatModel nbaStatRank;

  @override
  String toString() {
    return 'NbaStatDetailPageRouteArgs{key: $key, nbaStatRank: $nbaStatRank}';
  }
}
