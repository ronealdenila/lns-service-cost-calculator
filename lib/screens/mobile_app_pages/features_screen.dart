import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/providers/lns_api.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';
import 'package:lns_service_cost_calculator/widgets/options_layout.dart';
import 'package:provider/provider.dart';

class FeaturesPage extends StatelessWidget {
  static const routeName = '/features-option';

  @override
  Widget build(BuildContext context) {
    final serviceTypeId = ModalRoute.of(context)!.settings.arguments as String;
    final appProvider = Provider.of<AppProvider>(context);

    final loadedServiceType = appProvider.findById(serviceTypeId);

    return OptionsLayout(
      title:
          'Which features/functionalities do you want to include in your app?',
      subtitle: '(select atleast one opton)',
      mainButtonTitle: 'Next',
      body: SizedBox(
        height: 300,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: loadedServiceType.appFeatures!.length,
          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: loadedServiceType.appFeatures![i],
            child: Consumer<FeaturesModel>(
              builder: (_, bar, __) => InkWell(
                onTap: () => appProvider.toggleMultipleCardSelection(bar, i),
                child: Card(
                  color:
                      //set the background color of the button when it is selected/ not selected
                      bar.isSelected! ? kcSecondaryColor : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        loadedServiceType.appFeatures![i].icon,
                        color: bar.isSelected! ? Colors.white : Colors.black,
                      ),
                      verticalSpaceRegular,
                      BoxText.caption(
                        '${loadedServiceType.appFeatures![i].title}',
                        align: TextAlign.center,
                        color: bar.isSelected! ? Colors.white : Colors.black,
                      ),
                    ],
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
