import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/service_type_item.dart';
import '../providers/services.dart';

class ServiceTypeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final serviceTypeData = Provider.of<Services>(context);
    final serviceTypes = serviceTypeData.items;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: serviceTypes.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: serviceTypes[i],
        child: ServiceTypeItem(),
      ),
    );
  }
}
