import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:mobile_report/components/headers/header_register.dart';
import 'package:mobile_report/screens/indonesia_strings.dart';
import 'package:mobile_report/screens/login%20screen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscured = true;
  // final AuthService authService = AuthService();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/images/loginRegister_bg.png'),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: Column(
              children: [
                RegisterHeader(),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 27),
                        child: TextField(
                          controller: name,
                          showCursor: true,
                          cursorColor: Colors.grey[600],
                          style: TextStyle(
                            color: Color.fromRGBO(0, 77, 64, 1),
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(221, 226, 225, 1)),
                                  borderRadius: BorderRadius.circular(10.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(221, 226, 225, 1)),
                                  borderRadius: BorderRadius.circular(10.0)),
                              hintText: "Nama",
                              hintStyle: TextStyle(color: Colors.grey[600])),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 27),
                        child: TextField(
                          controller: email,
                          showCursor: true,
                          cursorColor: Colors.grey[600],
                          style: TextStyle(
                            color: Color.fromRGBO(0, 77, 64, 1),
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(221, 226, 225, 1)),
                                  borderRadius: BorderRadius.circular(10.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(221, 226, 225, 1)),
                                  borderRadius: BorderRadius.circular(10.0)),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey[600])),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 27),
                              child: TextField(
                                obscureText: _isObscured,
                                controller: password,
                                showCursor: true,
                                cursorColor: Colors.grey[600],
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 77, 64, 1),
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _isObscured
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscured = !_isObscured;
                                        });
                                      },
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 8),
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                            Color.fromRGBO(221, 226, 225, 1)),
                                        borderRadius:
                                        BorderRadius.circular(10.0)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                            Color.fromRGBO(221, 226, 225, 1)),
                                        borderRadius:
                                        BorderRadius.circular(10.0)),
                                    hintText: "Password",
                                    hintStyle:
                                    TextStyle(color: Colors.grey[600])),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlutterPwValidator(
                        strings: IndonesiaStrings(),
                        controller: password,
                        defaultColor: Colors.grey,
                        minLength: 8,
                        uppercaseCharCount: 1,
                        lowercaseCharCount: 1,
                        numericCharCount: 1,
                        specialCharCount: 1,
                        width: 400,
                        height: 190,
                        onSuccess: () {
                          print("MATCHED");
                        },
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(top: 50, bottom: 58),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () async {
                                  // TrackerService().track("click-register",
                                  //     withDeviceInfo: true,
                                  //     withProfileInfo: false);
                                  // await (GuestService().getGuestStatus())
                                  //     .then((value) {
                                  //   if (value == true) {
                                  //     registerAsGuest();
                                  //   } else {
                                  //     register();
                                  //   }
                                  // });
                                },
                                child: Ink(
                                  height: 48,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color.fromRGBO(255, 0, 0, 1),
                                        Color.fromRGBO(255, 102, 102, 1),
                                        Color.fromRGBO(255, 99, 99, 1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text('Daftar',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Comfortaa",
                                            color: Colors.white,
                                            fontSize: 18)),
                                  ),
                                )),
                            SizedBox.fromSize(size: Size.fromHeight(34)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Sudah punya akun? ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 191, 255, 1))),
                                InkWell(
                                  child: Text('Masuk',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(0, 100, 255, 1),
                                          decoration: TextDecoration.underline)),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginScreen()));
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}