import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_uikit_true_power/config/Routes/routes.dart';


import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle headline = GoogleFonts.poppins(
    fontWeight: FontWeight.w500, fontSize: 30, color: Color(0xFF141619));
ThemeData fbPinkThemData =ThemeData.light().copyWith(
          primaryColor: Colors.pink,appBarTheme: AppBarTheme(color: Colors.indigo[900]),
          colorScheme: ColorScheme.light().copyWith(primary: Colors.pink[400]),
          textTheme: GoogleFonts.poppinsTextTheme());
class FBLoginView extends StatelessWidget {
  const FBLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: fbPinkThemData,
      child: Scaffold(
          body: SafeArea(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            Opacity(
                opacity: .1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/flight_booking/world_wide.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                )),
            Text('Create', style: headline),
            Text(
              'an account',
              style: headline,
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: TextFormField(
                      cursorColor: Colors.pink[300],
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink[200]!)),
                        label: Text(
                          'Name',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: TextFormField(
                      cursorColor: Colors.pink[300],
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.check,
                          color: Colors.pink,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink[200]!)),
                        label: Text(
                          'Email',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.pink[300],
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.grey[500],
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink[200]!)),
                        label: Text(
                          'Password',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.pink[400]!),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Sign up',
                                  style: headline.copyWith(
                                      fontSize: 16, color: Colors.white),
                                ),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 0)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(vertical: 0)),
                    shadowColor: MaterialStateProperty.all(Colors.grey)),
                onPressed: () {
                      Get.toNamed(RoutesName.fbHome);
                },
                child: Text(
                  'Skip for Now',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ))
          ],
        ),
      ))),
    );
  }
}
