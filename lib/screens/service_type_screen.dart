import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/constants/app_strings.dart';
import 'package:lns_service_cost_calculator/providers/lns_api.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/mobile_app_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/type_of_app_screen.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';
import 'package:provider/provider.dart';

class ServiceTypeScreen extends StatelessWidget {
  static const routeName = '/service-type-screen';
  @override
  Widget build(BuildContext context) {
    final appData = context.read<AppProvider>().items;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            // actions: [
            //   IconButton(icon: Icon(Icons.logout), onPressed: appState.signOut)
            // ],
            ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            BoxText.headingTwo(
              TypeOfServiceOptionTitle,
              align: TextAlign.center,
            ),
            verticalSpaceLarge,
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: appData.length,
                itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                  value: appData[i],
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: kcPrimaryColor, padding: EdgeInsets.all(15)),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          MobileAppScreen.routeName,
                          arguments: appData[i].id,
                        );
                      },
                      child: Text('${appData[i].title}'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
