import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbastatsetiya/models/search_model.dart';
import 'package:nbastatsetiya/models/stat_model.dart';
import 'package:nbastatsetiya/services/nba_ranks.dart';

import 'state.dart';

class NbaRankBloc extends Cubit<NbaStatEvent> {
  NbaRankBloc() : super(NoNbaStatState()) {
    fetchDriverRankings();
  }
  List<NbaStatModel> nbaRankList = [];
  String filterText = "";

  void setFilterText(String value) {
    filterText = value;
    filterList();
  }

  void fetchDriverRankings() async {
    try {
      emit(NbaRankLoadingState());
      var listApiResponse = await NbaRankingService().getNbaRankings();
      if (listApiResponse != null || listApiResponse!.data.isNotEmpty) {
        nbaRankList = listApiResponse.data;
        emit(NbaStatLoadedState(nbaRankList));
      } else {
        emit(NbaStatErrorState("DriverRanking not fetched"));
      }
    } catch (e) {
      emit(NbaStatErrorState(e.toString()));
    }
  }

  void filterList() async {
    emit(NbaRankLoadingState());

    if (filterText.isEmpty) {
      emit(NbaStatLoadedState(nbaRankList));
    } else {
      emit(NbaStatFilteringState(nbaRankList.filterByFilterText(filterText)));
    }
  }
}
