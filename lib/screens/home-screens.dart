import 'package:covidapp/constraint.dart';
import 'package:covidapp/widgets/infoCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covidapp/widgets/preventionCard.dart';
import 'DetailScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 8,
                runSpacing: 8,
                children: [
                  InfoCard(
                    title: "Confirmed Cases",
                    iconColor: Color(0xFFFF8C00),
                    effected: 180,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailScreen();
                          },
                        ),
                      );
                    },
                  ),
                  InfoCard(
                    title: "Total Death",
                    iconColor: Color(0xFFFF2D55),
                    effected: 50,
                    press: () {},
                  ),
                  InfoCard(
                    title: "Total Recovered",
                    iconColor: Color(0xFF50E3C2),
                    effected: 750,
                    press: () {},
                  ),
                  InfoCard(
                    title: "New Cases",
                    iconColor: Color(0xFF5856d6),
                    effected: 65,
                    press: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Preventions",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PreventinCard(
                          svg: "assets/icons/hand_wash.svg",
                          title: "Hand Wash",
                        ),
                        PreventinCard(
                          svg: "assets/icons/use_mask.svg",
                          title: "Use Mask",
                        ),
                        PreventinCard(
                          svg: "assets/icons/Clean_Disinfect.svg",
                          title: "Clean Disinfect",
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .4,
                            ),
                            width: double.infinity,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF60BE93),
                                  Color(0xFF1B8D59),
                                ],
                              ),
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Dial 104 for \nMedical Help",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  TextSpan(
                                    text: "\nIf any Symptoms appear",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.5)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 13.0),
                            child: SvgPicture.asset("assets/icons/nurse.svg"),
                          ),
                          Positioned(
                            top: 30,
                            right: 10,
                            child: SvgPicture.asset("assets/icons/virus.svg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(0.03),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
