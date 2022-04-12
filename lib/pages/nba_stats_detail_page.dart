import 'package:flutter/material.dart';
import 'package:nbastatsetiya/models/stat_model.dart';

import '../utils/core.dart';

class NbaStatDetailPage extends StatefulWidget {
  final NbaStatModel nbaStatRank;
  const NbaStatDetailPage({
    Key? key,
    required this.nbaStatRank,
  }) : super(key: key);

  @override
  State<NbaStatDetailPage> createState() => _NbaStatDetailPageState();
}

class _NbaStatDetailPageState extends State<NbaStatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ThemeCol.primaryColor,
        title: Text(
          "${widget.nbaStatRank.firstname} ${widget.nbaStatRank.lastname}",
          style: CustomTextStyle.h3(textStyleP: const TextStyleP(color: ThemeCol.bgColor)),
        ),
      ),
      body: Column(
        children: [
          Hero(
            tag: widget.nbaStatRank.id!,
            child: Image.asset(
              "assets/logo.jpg",
              width: MediaQuery.of(context).size.width * 3,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.width * .05,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  info("Id", widget.nbaStatRank.id == null ? "No Data" : "${widget.nbaStatRank.id}"),
                  info("Name", "${widget.nbaStatRank.firstname} ${widget.nbaStatRank.lastname}"),
                  info("Birth", widget.nbaStatRank.birth!.date == null ? "No Data" : widget.nbaStatRank.birth!.date.toString()),
                  info("Collage", widget.nbaStatRank.college == null ? "No Data" : "${widget.nbaStatRank.college}"),
                  info("Height / Meter", widget.nbaStatRank.height!.meters == null ? "No Data" : "${widget.nbaStatRank.height!.meters}"),
                  info("Weight / Kgs", widget.nbaStatRank.weight!.kilograms == null ? "No Data" : "${widget.nbaStatRank.weight!.kilograms}"),
                  info("Affiliation", widget.nbaStatRank.affiliation == null ? "No Data" : "${widget.nbaStatRank.affiliation}"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget info(String title, String data) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text(title, style: CustomTextStyle.h4(textStyleP: const TextStyleP(fontWeight: FontWeight.bold))),
          ),
          Expanded(
            child: Text(data, style: CustomTextStyle.h4()),
          )
        ],
      ),
    );
  }
}
