import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/providers/service.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_category_screen.dart';
import 'package:lns_service_cost_calculator/shared/styles.dart';
import 'package:provider/provider.dart';

class ServiceTypeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final serviceType = Provider.of<Service>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              MobileAppCategoryScreen.routeName,
              arguments: serviceType.id,
            );
          },
          //TODO: Try to cached it so that the image wouldn't rebuild
          child: Image.asset(serviceType.image!),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: FittedBox(
            child: Text(
              serviceType.title!,
            ),
          ),
        ),
      ),
    );
  }
}