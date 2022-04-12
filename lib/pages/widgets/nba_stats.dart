import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nbastatsetiya/models/stat_model.dart';
import 'package:nbastatsetiya/utils/app_router.gr.dart';

import '../../../utils/core.dart';

class NbaStatRankWidget extends StatefulWidget {
  final NbaStatModel nbaStatRank;
  const NbaStatRankWidget({
    Key? key,
    required this.nbaStatRank,
  }) : super(key: key);

  @override
  State<NbaStatRankWidget> createState() => _NbaStatRankWidgetState();
}

class _NbaStatRankWidgetState extends State<NbaStatRankWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => context.router.push((NbaStatDetailPageRoute(nbaStatRank: widget.nbaStatRank))),
        child: SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Row(
                children: [
                  Hero(
                    tag: widget.nbaStatRank.id!,
                    child: Image.asset(
                      "assets/logo.jpg",
                      width: 94,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        info("Name", "${widget.nbaStatRank.firstname} ${widget.nbaStatRank.lastname}"),
                        info("Birth", widget.nbaStatRank.birth!.date == null ? "No Data" : "${widget.nbaStatRank.birth!.date}"),
                        info("College", widget.nbaStatRank.college == null ? "No Data" : "${widget.nbaStatRank.college}"),
                        info("Affiliation", widget.nbaStatRank.affiliation == null ? "No Data" : "${widget.nbaStatRank.affiliation}"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget info(String title, String data) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(title, style: CustomTextStyle.h6(textStyleP: const TextStyleP(fontWeight: FontWeight.bold))),
          ),
          Expanded(
            child: Text(data, style: CustomTextStyle.h6()),
          )
        ],
      ),
    );
  }
}
