import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/resuable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  Gender selectedGener;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGener = Gender.male;
                      });
                    },
                    colour: selectedGener == Gender.male
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: IconContainer(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(
                        () {
                          selectedGener = Gender.female;
                        },
                      );
                    },
                    colour: selectedGener == Gender.female
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: IconContainer(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: activeCardColour,
              cardChild: Column(
                children: <Widget>[Text('HEIGHT')],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
