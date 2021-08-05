import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';

class AppCategoryItem extends StatefulWidget {
  final String? title;
  final IconData? icon;
  const AppCategoryItem({Key? key, this.title, this.icon}) : super(key: key);

  @override
  _AppCategoryItemState createState() => _AppCategoryItemState();
}

class _AppCategoryItemState extends State<AppCategoryItem> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: _selected ? kcSecondaryColor : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          setState(() {
            _selected = !_selected;
            print(_selected);
          });
        },
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: 40,
                color: _selected ? Colors.white : Colors.black,
              ),
              verticalSpaceRegular,
              Text(
                widget.title!,
                style: TextStyle(
                  fontSize: 10,
                  color: _selected ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
