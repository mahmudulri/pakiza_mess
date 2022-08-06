import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pakiza_mess/const/appcolors.dart';
import 'package:pakiza_mess/const/appstring.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo/logo.png",
                height: 100, width: 100, fit: BoxFit.fill),
            Text(
              "MessXP",
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),
            SizedBox(height: 15),
            reg_texfield("Your Name"),
            SizedBox(height: 5),
            reg_texfield("Email"),
            SizedBox(height: 5),
            reg_texfield("Phone Number"),
            SizedBox(height: 5),
            reg_texfield("Password"),
            SizedBox(height: 5),
            reg_texfield("Confirm Password"),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.access_buttonColor, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {},
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Already have account? ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                        text: 'Login now',
                        style: TextStyle(
                          color: Colors.yellow,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Login buton Clicked');
                          }),
                  ]),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.info_outline,
                  color: AppColors.access_buttonColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget reg_texfield(String fieldName) {
  return TextField(
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: AppColors.access_buttonColor, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: AppColors.access_buttonColor),
      ),
      hintText: fieldName,
      hintStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
