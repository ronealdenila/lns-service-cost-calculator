import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/constants/app_strings.dart';
import 'package:lns_service_cost_calculator/providers/lns_api.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';
import 'package:lns_service_cost_calculator/widgets/options_layout.dart';
import 'package:provider/provider.dart';

class DisplayNumberPage extends StatelessWidget {
  static const routeName = '/display-number-option';

  @override
  Widget build(BuildContext context) {
    final serviceTypeId = ModalRoute.of(context)!.settings.arguments as String;
    final appProvider = Provider.of<AppProvider>(context);

    final loadedServiceType = appProvider.findById(serviceTypeId);

    return OptionsLayout(
      title: NumberOfDisplayScreenTitle,
      subtitle: 'select any one option',
      mainButtonTitle: 'Next',
      body: SizedBox(
        height: 300,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: loadedServiceType.appScreen!.length,
          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: loadedServiceType.appScreen![i],
            child: InkWell(
              onTap: () => appProvider.toggleSingleCardSelection(
                i,
                loadedServiceType.appScreen,
              ),
              child: Consumer<DisplayScreenModel>(
                builder: (_, bar, __) => Card(
                  color: bar.isSelected ? kcSecondaryColor : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        loadedServiceType.appScreen![i].icon,
                        color: bar.isSelected ? Colors.white : Colors.black,
                      ),
                      verticalSpaceRegular,
                      BoxText.caption(
                        '${loadedServiceType.appScreen![i].title}',
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
    );
  }
}
