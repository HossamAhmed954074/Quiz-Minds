import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

circleIndeactorCustom(BuildContext context) {
  return Center(
    child: SizedBox(
      width: 150,
      height: 150,
      child: LoadingIndicator(
        indicatorType: Indicator.ballClipRotateMultiple,

        /// Required, The loading type of the widget
        colors: const [Colors.green],

        /// Optional, The color collections
        strokeWidth: 2,

        /// Optional, The stroke of the line, only applicable to widget which contains line
      ),
    ),
  );
}
