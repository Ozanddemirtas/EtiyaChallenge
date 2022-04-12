import 'package:flutter/material.dart';
import 'package:nbastatsetiya/models/stat_model.dart';
import 'package:nbastatsetiya/pages/widgets/nba_stats.dart';

import '../../../../widgets/search_textfield.dart';

class NbaStatListWidget extends StatefulWidget {
  final List<NbaStatModel> nbaStatRankingList;
  final Function(String)? searchCallback;
  const NbaStatListWidget({
    Key? key,
    required this.nbaStatRankingList,
    required this.searchCallback,
  }) : super(key: key);

  @override
  State<NbaStatListWidget> createState() => _NbaStatListWidgetState();
}

class _NbaStatListWidgetState extends State<NbaStatListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTextfield(title: "Search", onChanged: widget.searchCallback),
        Flexible(
          child: ListView.builder(
            itemCount: widget.nbaStatRankingList.length,
            itemBuilder: (context, i) {
              NbaStatModel nbaStatRanking = widget.nbaStatRankingList[i];
              return NbaStatRankWidget(
                nbaStatRank: nbaStatRanking,
              );
            },
          ),
        ),
      ],
    );
  }
}
