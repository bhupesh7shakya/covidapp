import 'package:covidapp/constraint.dart';
import 'package:covidapp/widgets/weeklyChart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  )
                ]),
                child: Column(
                  children: [
                    buildTitleWithRow(),
                    SizedBox(
                      height: 15,
                    ),
                    buildCasesNumberRow(context),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "From Health Center",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: kTextMediumColor,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    WeeklyChart(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildInfoPercentageRichText(
                          percentage: "64",
                          title: "From LastWeek",
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 24),
                        blurRadius: 54,
                        color: Colors.black.withOpacity(0.05),
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Global Map",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SvgPicture.asset("asset/icons/more.svg")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset("assets/icons/map.svg"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  RichText buildInfoPercentageRichText({String percentage, String title}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$percentage\n",
            style: TextStyle(
              fontSize: 20,
              color: kPrimaryColor,
            ),
          ),
          TextSpan(
            text: "$title",
            style: TextStyle(
              color: kTextMediumColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Row buildCasesNumberRow(BuildContext context) {
    return Row(
      children: [
        Text(
          "547",
          style: Theme.of(context)
              .textTheme
              .headline2
              .copyWith(color: kPrimaryColor, height: 1),
        ),
        Text(
          "5.9",
          style: TextStyle(color: kPrimaryColor),
        ),
        SvgPicture.asset("assets/icons/increase.svg")
      ],
    );
  }

  Row buildTitleWithRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "New Cases",
          style: TextStyle(
            color: kTextMediumColor,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        SvgPicture.asset("assets/icons/more.svg")
      ],
    );
  }

  AppBar buildDetailAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(0.0003),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: kPrimaryColor,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        )
      ],
    );
  }
}
