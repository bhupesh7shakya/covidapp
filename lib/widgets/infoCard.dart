import 'package:covidapp/constraint.dart';
import 'package:covidapp/widgets/lineChart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int effected;
  final Color iconColor;
  final Function press;
  const InfoCard({
    Key key,
    this.title,
    this.effected,
    this.iconColor,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: press,
          child: Container(
            width: constraints.maxWidth / 2 - 19,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: iconColor.withOpacity(0.12),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/running.svg",
                          width: 12,
                          height: 12,
                          color: iconColor,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        title,
                        style: TextStyle(fontSize: 10),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.7),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: kTextColor),
                          children: [
                            TextSpan(
                              text: "$effected\n",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                            ),
                            TextSpan(
                              text: "People",
                              style: TextStyle(
                                // fontSize: 10,
                                height: 1.5,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: LineReportChart(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
