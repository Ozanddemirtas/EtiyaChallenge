import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbastatsetiya/bloc/ranking/bloc.dart';
import 'package:nbastatsetiya/bloc/ranking/state.dart';
import 'package:nbastatsetiya/models/stat_model.dart';
import 'package:nbastatsetiya/pages/widgets/nba_stat_list.dart';

import '../style/_style_exporter.dart';

class NbaStatMainPage extends StatefulWidget {
  const NbaStatMainPage({Key? key}) : super(key: key);

  @override
  State<NbaStatMainPage> createState() => _NbaStatMainPageState();
}

class _NbaStatMainPageState extends State<NbaStatMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ThemeCol.primaryColor,
        title: Text(
          "NBA stats",
          style: CustomTextStyle.h3(textStyleP: const TextStyleP(color: ThemeCol.bgColor)),
        ),
      ),
      body: BlocBuilder<NbaRankBloc, NbaStatEvent>(builder: (context, state) {
        switch (state.runtimeType) {
          case NbaRankLoadingState:
            return loadingContent();
          case NbaStatErrorState:
            return errorContent(context);
          case NbaStatFilteringState:
            return listContent((state as NbaStatFilteringState).list);
          case NbaStatLoadedState:
            return listContent((state as NbaStatLoadedState).list);
          default:
            return Container();
        }
      }),
    );
  }

  Widget loadingContent() {
    return Center(
        child: CircularProgressIndicator(
      color: ThemeCol.primaryColor,
    ));
  }

  Widget errorContent(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Page needs to reload"),
        IconButton(
            onPressed: () {
              BlocProvider.of<NbaRankBloc>(context).fetchDriverRankings();
            },
            icon: const Icon(Icons.replay_outlined))
      ],
    ));
  }

  Widget listContent(List<NbaStatModel> list) {
    return NbaStatListWidget(
      nbaStatRankingList: list,
      searchCallback: context.read<NbaRankBloc>().setFilterText,
    );
  }
}
