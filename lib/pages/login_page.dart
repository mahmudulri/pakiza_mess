import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pakiza_mess/const/appcolors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var type = 1;

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
            reg_texfield("Phone number or Code"),
            SizedBox(height: 5),
            reg_texfield("Password"),
            SizedBox(height: 30),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Icon(
                            Icons.circle,
                            color: type == 0 ? Colors.yellow : Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Manager",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(height: 5),
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.circle,
                            color: type == 0 ? Colors.yellow : Colors.red,
                          ),
                        ),
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          "Member",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
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
                  'Login',
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
                      text: 'Dont have any account? ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                        text: 'Open now',
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
