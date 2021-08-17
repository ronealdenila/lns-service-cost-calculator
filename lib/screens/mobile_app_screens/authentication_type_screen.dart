import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';
import 'package:lns_service_cost_calculator/widgets/options_layout.dart';

import 'package:lns_service_cost_calculator/providers/lns_api.dart';

import 'package:provider/provider.dart';

class AuthenticationTypeScreen extends StatelessWidget {
  static const routeName = 'authentication-type-option';

  const AuthenticationTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final serviceTypeId = ModalRoute.of(context)!.settings.arguments as String;
    final appProvider = Provider.of<AppProvider>(context);

    final loadedServiceType = appProvider.findById(serviceTypeId);

    return Scaffold(
      body: OptionsLayout(
        title: 'Which would you like your user to register/login to your App?',
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
              itemCount: loadedServiceType.appAuthType!.length,
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                    value: loadedServiceType.appAuthType![i],
                    child: Consumer<AuthenticationTypeModel>(
                      builder: (_, bar, __) => InkWell(
                        onTap: () =>
                            appProvider.toggleMultipleCardSelection(bar, i),
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
                                loadedServiceType.appAuthType![i].icon,
                                color: bar.isSelected!
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              verticalSpaceRegular,
                              BoxText.caption(
                                '${loadedServiceType.appAuthType![i].title}',
                                align: TextAlign.center,
                                color: bar.isSelected!
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
