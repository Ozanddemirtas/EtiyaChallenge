import 'package:auto_route/annotations.dart';
import 'package:nbastatsetiya/pages/nba_stats_detail_page.dart';
import 'package:nbastatsetiya/pages/nba_stats_main_page.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: NbaStatMainPage, initial: true),
  AutoRoute(page: NbaStatDetailPage),
])
class $AppRouter {}
