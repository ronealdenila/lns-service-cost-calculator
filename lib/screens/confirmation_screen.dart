import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/constants/app_strings.dart';
import 'package:lns_service_cost_calculator/screens/result_screen.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';
import 'package:lns_service_cost_calculator/widgets/form_input_field_with_icon.dart';

class ConfirmationPage extends StatelessWidget {
  static const routeName = 'confirmation-option';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullnameController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'ALMOST THERE',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  BoxText.caption(
                    ConfirmationScreenCaption,
                    align: TextAlign.center,
                  ),
                  SizedBox(height: 100.0),
                  FormInputFieldWithIcon(
                    controller: emailController,
                    iconPrefix: Icons.email,
                    labelText: 'Email',
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Invalid email!';
                      }
                      return null;
                    },
                    onChanged: (value) => null,
                    onSaved: (value) => emailController.text = value!,
                  ),
                  SizedBox(height: 20),
                  FormInputFieldWithIcon(
                    controller: emailController,
                    iconPrefix: Icons.phone,
                    labelText: 'Phone Number',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter your Full name';
                      }
                      return null;
                    },
                    onChanged: (value) => null,
                    onSaved: (value) => emailController.text = value!,
                  ),
                  SizedBox(height: 20),
                  FormInputFieldWithIcon(
                    controller: fullnameController,
                    iconPrefix: Icons.person,
                    labelText: 'Fullname',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter your Full name';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => fullnameController.text = value!,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  BoxButton(
                    title: 'PROCEED',
                    onTap: () =>
                        Navigator.of(context).pushNamed(ResultScreen.routeName),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
