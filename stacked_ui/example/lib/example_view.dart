import 'package:flutter/material.dart';
import 'package:stacked_ui/stacked_ui.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          PortfolioText.headingOne('Design System'),
          verticalSpaceSmall,
          Divider(),
          verticalSpaceSmall,
          ...buttonWidgets,
          ...textWidgets,
          ...inputFields,
        ],
      ),
    );
  }

  List<Widget> get textWidgets => [
        PortfolioText.headline('Text Styles'),
        verticalSpaceMedium,
        PortfolioText.headingOne('Heading One'),
        verticalSpaceMedium,
        PortfolioText.headingTwo('Heading Two'),
        verticalSpaceMedium,
        PortfolioText.headingThree('Heading Three'),
        verticalSpaceMedium,
        PortfolioText.headline('Headline'),
        verticalSpaceMedium,
        PortfolioText.subheading('This will be a sub heading to the headling'),
        verticalSpaceMedium,
        PortfolioText.body('Body Text that will be used for the general body'),
        verticalSpaceMedium,
        PortfolioText.caption(
            'This will be the caption usually for smaller details'),
        verticalSpaceMedium,
      ];

  List<Widget> get buttonWidgets => [
        PortfolioText.headline('Buttons'),
        verticalSpaceMedium,
        PortfolioText.body('Normal'),
        verticalSpaceSmall,
        PortfolioButton(
          title: 'SIGN IN',
        ),
        verticalSpaceSmall,
        PortfolioText.body('Disabled'),
        verticalSpaceSmall,
        PortfolioButton(
          title: 'SIGN IN',
          disabled: true,
        ),
        verticalSpaceSmall,
        PortfolioText.body('Busy'),
        verticalSpaceSmall,
        PortfolioButton(
          title: 'SIGN IN',
          busy: true,
        ),
        verticalSpaceSmall,
        PortfolioText.body('Outline'),
        verticalSpaceSmall,
        PortfolioButton.outline(
          title: 'Select location',
          leading: Icon(
            Icons.send,
            color: kcPrimaryColor,
          ),
        ),
        verticalSpaceMedium,
      ];

  List<Widget> get inputFields => [
        PortfolioText.headline('Input Field'),
        verticalSpaceSmall,
        PortfolioText.body('Normal'),
        verticalSpaceSmall,
        PortfolioInputField(
          controller: TextEditingController(),
          placeholder: 'Enter Password',
        ),
        verticalSpaceSmall,
        PortfolioText.body('Leading Icon'),
        verticalSpaceSmall,
        PortfolioInputField(
          controller: TextEditingController(),
          leading: Icon(Icons.reset_tv),
          placeholder: 'Enter TV Code',
        ),
        verticalSpaceSmall,
        PortfolioText.body('Trailing Icon'),
        verticalSpaceSmall,
        PortfolioInputField(
          controller: TextEditingController(),
          trailing: Icon(Icons.clear_outlined),
          placeholder: 'Search for things',
        ),
      ];
}
