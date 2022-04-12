import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/text_style.dart';

class SearchTextfield extends StatelessWidget {
  final String title;
  final Function(String)? onChanged;
  const SearchTextfield({
    Key? key,
    required this.title,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: onChanged,
        cursorHeight: 24,
        style: CustomTextStyle.h4(),
        cursorColor: ThemeCol.primaryColor,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: ThemeCol.primaryColor,
          )),
          labelText: title,
          floatingLabelStyle: CustomTextStyle.h4(textStyleP: TextStyleP(color: ThemeCol.primaryColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: ThemeCol.primaryColor,
          )),
        ),
      ),
    );
  }
}
