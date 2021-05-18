import 'package:covidapp/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventinCard extends StatelessWidget {
  final String svg;
  final String title;
  const PreventinCard({
    Key key,
    this.svg,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: SvgPicture.asset(svg)),
        Text(
          title,
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontSize: 15,
                color: kPrimaryColor,
              ),
        )
      ],
    );
  }
}
