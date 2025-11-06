import 'package:flutter/cupertino.dart';

double getResponsiveFontSize({
  required double fontSize,
  required BuildContext context,
}) {
  double scallFactor = getScallfactor(context: context);
  double responsiveFontSize = scallFactor * fontSize;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  responsiveFontSize.clamp(
    lowerLimit,
    upperLimit,
  ); //NORMALIZE responsiveFontSize
  return responsiveFontSize;
}

double getScallfactor({required BuildContext context}) {
  double currentWidth = MediaQuery.sizeOf(context).width;
  if (currentWidth < 600) {
    return currentWidth / 400;
  } else if (currentWidth < 900) {
    return currentWidth / 700;
  } else {
    return currentWidth / 1000;
  }
}
