import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/screens/mobile_app_screens/app_category_screen.dart';

import '/shared/app_colors.dart';
import '/shared/ui_helpers.dart';

import '/constants/app_strings.dart';

import '/widgets/box_button.dart';
import '/widgets/box_text.dart';

import '/providers/services.dart';

class TypeOfAppScreen extends StatefulWidget {
  static const routeName = '/type-of-screen-option';

  @override
  _TypeOfAppScreenState createState() => _TypeOfAppScreenState();
}

class _TypeOfAppScreenState extends State<TypeOfAppScreen> {
  var _androidOption;
  var _iOSOption;

  final _form = GlobalKey<FormState>();
  final PageController controller = PageController(initialPage: 0);

  Future<void> _saveTypeofApp() async {
    _form.currentState!.save();
    print(_androidOption);
    print(_iOSOption);
    if (_androidOption == false && _iOSOption == false) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('An error Occured'),
          content: Text('Please Choose atleast on of type of app.'),
          actions: [
            TextButton(
              child: Text('Okay'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            )
          ],
        ),
      );
    } else {
      Navigator.of(context).pushNamed(AppCategoryScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final serviceTypeId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedServiceType = context.read<Services>().findById(serviceTypeId);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                BoxText.headingThree(
                  'YOU HAVE CHOOSEN',
                  align: TextAlign.center,
                ),
                verticalSpaceMedium,
                BoxText.headline(
                  loadedServiceType.title!,
                  align: TextAlign.center,
                ),
                verticalSpaceRegular,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: BoxText.caption(
                    MobileAppCategoryDescription,
                    align: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                BoxText.body(
                  'What type of app are you building?',
                  align: TextAlign.center,
                ),
                Form(
                  key: _form,
                  child: Column(
                    children: [
                      CheckboxFormField(
                        title: Text('Android'),
                        onSaved: (value) {
                          _androidOption = value;
                        },
                      ),
                      CheckboxFormField(
                        title: Text('iOS'),
                        onSaved: (value) {
                          _iOSOption = value;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: BoxButton(
                title: 'Next',
                onTap: _saveTypeofApp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {Widget? title,
      FormFieldSetter<bool>? onSaved,
      FormFieldValidator<bool>? validator,
      bool initialValue = false,
      bool autovalidate = false})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                activeColor: kcPrimaryColor,
                dense: state.hasError,
                title: title,
                value: state.value,
                onChanged: state.didChange,
                subtitle: state.hasError
                    ? Builder(
                        builder: (BuildContext context) => Text(
                          state.errorText!,
                          style: TextStyle(color: Theme.of(context).errorColor),
                        ),
                      )
                    : null,
                controlAffinity: ListTileControlAffinity.leading,
              );
            });
}
