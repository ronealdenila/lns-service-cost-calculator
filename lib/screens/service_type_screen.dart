import 'package:flutter/material.dart';

import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/widgets/service_type_grid.dart';

class ServiceTypeScreen extends StatelessWidget {
  static const routeName = '/service-type-screen';
  @override
  Widget build(BuildContext context) {
    // final appState = context.read<Auth>();
    // final serviceTypeData = Provider.of<Services>(context);
    // final serviceTypes = context.read<Services>().items;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Select Type of Service'),
          backgroundColor: kcPrimaryColor,
          // actions: [
          //   IconButton(icon: Icon(Icons.logout), onPressed: appState.signOut)
          // ],
        ),
        body: ServiceTypeGrid(),
      ),
    );
  }
}
