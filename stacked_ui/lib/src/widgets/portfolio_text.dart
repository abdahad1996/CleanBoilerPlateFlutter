import 'package:flutter/material.dart';
import 'package:stacked_ui/src/shared/styles.dart';

import '../../stacked_ui.dart';

class PortfolioText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign alignment;

  const PortfolioText.headingOne(this.text, {TextAlign align = TextAlign.start})
      : style = heading1Style,
        alignment = align;
  const PortfolioText.headingTwo(this.text, {TextAlign align = TextAlign.start})
      : style = heading2Style,
        alignment = align;
  const PortfolioText.headingThree(this.text,
      {TextAlign align = TextAlign.start})
      : style = heading3Style,
        alignment = align;
  const PortfolioText.headline(this.text, {TextAlign align = TextAlign.start})
      : style = headlineStyle,
        alignment = align;
  const PortfolioText.subheading(this.text, {TextAlign align = TextAlign.start})
      : style = subheadingStyle,
        alignment = align;
  const PortfolioText.caption(this.text, {TextAlign align = TextAlign.start})
      : style = captionStyle,
        alignment = align;

  PortfolioText.body(this.text,
      {Color color = kcMediumGreyColor, TextAlign align = TextAlign.start})
      : style = bodyStyle.copyWith(color: color),
        alignment = align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: alignment,
    );
  }
}
