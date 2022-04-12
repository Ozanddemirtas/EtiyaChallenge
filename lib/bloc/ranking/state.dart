import 'package:nbastatsetiya/models/stat_model.dart';

abstract class NbaStatEvent {}

class NoNbaStatState extends NbaStatEvent {}

class NbaRankLoadingState extends NbaStatEvent {}

class NbaStatLoadedState extends NbaStatEvent {
  final List<NbaStatModel> list;
  NbaStatLoadedState(this.list);
}

class NbaStatFilteringState extends NbaStatEvent {
  final List<NbaStatModel> list;
  NbaStatFilteringState(this.list);
}

class NbaStatErrorState extends NbaStatEvent {
  final String error;
  NbaStatErrorState(this.error);
}
