import 'package:flutter/material.dart';
import 'package:internet_car/screens/components/tmp_btn.dart';

import '../../constanins.dart';
import '../../home_controller.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({
    Key? key,
    required HomeController homeController,
  })  : _homeController = homeController,
        super(key: key);

  final HomeController _homeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                TempBtn(
                  isActive: _homeController.isCoolSelected,
                  svgSrc: "assets/icons/coolShape.svg",
                  title: "COOL",
                  press: _homeController.updateSelectedTab,
                ),
                SizedBox(width: defaultPadding),
                TempBtn(
                  isActive: !_homeController.isCoolSelected,
                  svgSrc: "assets/icons/heatShape.svg",
                  title: "HEAT",
                  activeColor: redColor,
                  press: _homeController.updateSelectedTab,
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.arrow_drop_up,
                  size: 48,
                ),
              ),
              Text(
                "26" + "\u2103",
                style: TextStyle(fontSize: 86),
              ),
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 48,
                ),
              ),
            ],
          ),
          Spacer(),
          Text("CURRENT TEMPERATURE"),
          SizedBox(height: defaultPadding),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("INSIDE"),
                  Text(
                    "20" + "\u2103",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              SizedBox(width: defaultPadding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OUTSIDE",
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text(
                    "35" + "\u2103",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white54),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}