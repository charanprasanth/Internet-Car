import 'package:flutter/material.dart';
import 'package:internet_car/models/TyrePsi.dart';

import '../../constanins.dart';

class Tyre_psi_card extends StatelessWidget {
  const Tyre_psi_card({
    Key? key,
    required this.isBottomTwoTyre,
    required this.tyrePsi,
  }) : super(key: key);

  final bool isBottomTwoTyre;
  final TyrePsi tyrePsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: tyrePsi.isLowPressure ? redColor.withOpacity(0.1) : Colors.white10,
        border: Border.all(
          color: tyrePsi.isLowPressure ? redColor : primaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: isBottomTwoTyre
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          lowPressureText(context),
          Spacer(),
          psiText(context, psi: tyrePsi.psi.toString()),
          SizedBox(height: defaultPadding),
          Text(
            "${tyrePsi.temp}\u2103",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      )
          : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          psiText(context, psi: tyrePsi.psi.toString()),
          SizedBox(height: defaultPadding),
          Text(
            "${tyrePsi.temp}\u2103",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Spacer(),
          lowPressureText(context),
        ],
      ),
    );
  }

  Text psiText(BuildContext context, {required String psi}) {
    return Text.rich(
      TextSpan(
        text: psi,
        style: Theme.of(context).textTheme.headline4!.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: "psi",
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }

  Column lowPressureText(BuildContext context) {
    return Column(
      children: [
        Text(
          "LOW",
          style: Theme.of(context).textTheme.headline3!.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Text(
          "PRESSURE",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
