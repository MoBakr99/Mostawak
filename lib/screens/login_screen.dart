import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mostawak/components/header.dart';
import 'package:mostawak/screens/signup_screen.dart';
import '../components/accept_term_row.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 1.sh,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  HeaderStack(),
                  SizedBox(height: 20.h),
                  Image.asset(
                    "assets/images/login.png",
                    width: 300.w,
                    height: 250.h,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextfield(controller: name, hintText: "Full Name"),
                  SizedBox(height: 30.h),
                  CustomTextfield(controller: email, hintText: "Email"),
                  SizedBox(height: 30.h),
                  const Spacer(),
                  CustomButton(
                    text: "LOGIN",
                    onPressed: () {
                    },
                  ),
                  RowStatements(
                    showCheckbox: false,
                    normalText: "Already have an account? ",
                    linkText: "Login",
                    onLinkTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen()));
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
