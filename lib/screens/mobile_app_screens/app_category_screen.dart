import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/providers/lns_api.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/display_number_screen.dart';
import 'package:lns_service_cost_calculator/widgets/options_layout.dart';
import 'package:provider/provider.dart';

import '/shared/app_colors.dart';
import '/shared/ui_helpers.dart';

import '/widgets/box_text.dart';

class AppCategoryScreen extends StatelessWidget {
  static const routeName = '/app-category-screen-option';
  @override
  Widget build(BuildContext context) {
    final serviceTypeId = ModalRoute.of(context)!.settings.arguments as String;
    final appProvider = Provider.of<AppProvider>(context);

    final loadedServiceType = appProvider.findById(serviceTypeId);

    return Scaffold(
      appBar: AppBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
      ),
      body: OptionsLayout(
        title: 'Which category best describes your App?',
        subtitle: '(select any one option)',
        mainButtonTitle: 'Next',
        onMainButtonTapped: () {
          Navigator.of(context).pushNamed(
            DisplayNumberScreen.routeName,
            arguments: serviceTypeId,
          );
        },
        grid: SizedBox(
          height: 300,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: loadedServiceType.appCategory!.length,
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: loadedServiceType.appCategory![i],
              child: InkWell(
                onTap: () => appProvider.toggleSingleCardSelection(
                    i, loadedServiceType.appCategory),
                child: Consumer<ServiceTypeSubModel>(
                  builder: (_, bar, __) => Card(
                    color:
                        //set the background color of the button when it is selected/ not selected
                        bar.isSelected ? kcPrimaryColor : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          loadedServiceType.appCategory![i].icon,
                          color: bar.isSelected ? Colors.white : Colors.black,
                        ),
                        verticalSpaceRegular,
                        BoxText.caption(
                          '${loadedServiceType.appCategory![i].title}',
                          align: TextAlign.center,
                          color: bar.isSelected ? Colors.white : Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
