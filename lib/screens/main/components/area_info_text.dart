import 'package:flutter/material.dart';
import 'package:portfolio_luizhbfilho/constants.dart';
import 'package:unicons/unicons.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "INFO",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const InfoText(text: "23 years"),
        const InfoText(text: "Curitiba, PR, Brazil"),
      ],
    );
  }
}

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(UniconsLine.angle_double_right),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
