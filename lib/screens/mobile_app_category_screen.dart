import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/constants/app_strings.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';

import 'package:lns_service_cost_calculator/widgets/box_text.dart';

import 'package:provider/provider.dart';

import '../providers/services.dart';

class MobileAppCategoryScreen extends StatelessWidget {
  static const routeName = '/mobile-app-category-option';

  @override
  Widget build(BuildContext context) {
    final serviceTypeId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedServiceType = context.read<Services>().findById(serviceTypeId);

    return Scaffold(
      appBar: AppBar(backgroundColor: kcPrimaryColor,),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          BoxText.headingThree(
            'YOU HAVE CHOOSEN',
            align: TextAlign.center,
          ),
          verticalSpaceLarge,
          BoxText.headline(loadedServiceType.title!, align: TextAlign.center,),
          verticalSpaceRegular,
          Container(padding: EdgeInsets.symmetric(horizontal: 30),child: BoxText.caption(MobileAppCategoryDescription,align: TextAlign.center,)),
        ],
      ),
    );
  }
}
