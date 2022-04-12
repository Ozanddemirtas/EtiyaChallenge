import 'package:nbastatsetiya/models/stat_model.dart';

extension DriverRankingListExtension on List<NbaStatModel> {
  List<NbaStatModel> filterByFilterText(String filterText) => where((element) => _checkFilterParam(element.firstname!, filterText) || _checkFilterParam(element.lastname!, filterText)).toList();

  bool _checkFilterParam(String value, String filterText) => value.toLowerCase().contains(filterText.toLowerCase());
}
