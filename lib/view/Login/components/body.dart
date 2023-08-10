import 'package:flutter/material.dart';
import 'package:big_deals/view//Login/components/background.dart';
import 'package:big_deals/view/Signup/signup_screen.dart';
import 'package:big_deals/view/components/already_have_an_account_acheck.dart';
import 'package:big_deals/view/components/rounded_button.dart';
import 'package:big_deals/view/components/rounded_input_field.dart';
import 'package:big_deals/view/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:big_deals/view/Main/main_page.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOG IN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/in.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOG IN",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Menu(index: 5,);
                }));
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
