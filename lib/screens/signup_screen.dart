import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mostawak/components/accept_term_row.dart';
import 'package:mostawak/components/header.dart';
import 'package:mostawak/widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 1.sh,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  HeaderStack(),
                  SizedBox(height: 50.h),
                  CustomTextfield(controller: name, hintText: "Full Name"),
                  SizedBox(height: 30.h),
                  CustomTextfield(controller: email, hintText: "Email"),
                  SizedBox(height: 30.h),
                  CustomTextfield(controller: password, hintText: "Password"),
                  SizedBox(height: 30.h),
                  CustomTextfield(controller: confirmPassword, hintText: "Confirm Password"),
                  SizedBox(height: 30.h),
                  RowStatements(
                    normalText: "I accept ",
                    linkText: "Terms and Conditions",
                    onLinkTap: () {
                      print("Terms tapped");
                    },
                  ),
                  const Spacer(),
                  RowStatements(
                    showCheckbox: false,
                    normalText: "Already have an account? ",
                    linkText: "Login",
                    onLinkTap: () {
                      print("Login tapped");
                    },
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}