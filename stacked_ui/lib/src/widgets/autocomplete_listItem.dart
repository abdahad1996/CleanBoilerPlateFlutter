import 'package:flutter/material.dart';
import 'package:stacked_ui/stacked_ui.dart';

class AutoCompleteListItem extends StatelessWidget {
  final String state, city;
  final Function onTap;

  const AutoCompleteListItem(
      {Key? key, required this.state, required this.city, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            Icons.near_me,
            color: kcMediumGreyColor,
          ),
          onTap: () => onTap(),
          title: PortfolioText.subheading(city),
          subtitle: PortfolioText.caption(state),
        ),
        Divider(
          indent: 50,
        )
      ],
    );
  }
}
