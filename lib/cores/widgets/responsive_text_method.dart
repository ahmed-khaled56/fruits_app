import 'package:flutter/cupertino.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';

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
  ); 
  return responsiveFontSize;
}

double getScallfactor({required BuildContext context}) {
  double currentWidth = portraitWidth(context);
  if (currentWidth < 600) {
    return currentWidth / 400;
  } else if (currentWidth < 900) {
    return currentWidth / 700;
  } else {
    return currentWidth / 1000;
  }
}
