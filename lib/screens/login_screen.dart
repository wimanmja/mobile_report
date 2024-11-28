import 'package:flutter/material.dart';
import 'package:mobile_report/components/headers/header_login.dart';
import 'package:mobile_report/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true;
  // final AuthService authService = AuthService();
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
                LoginHeader(),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
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
                              margin: EdgeInsets.only(top: 26),
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
                                        color: Colors.grey[600],
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
                      Container(
                        margin: EdgeInsetsDirectional.only(top: 34, bottom: 58),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  // TrackerService().track("click-login",
                                  //     withDeviceInfo: true,
                                  //     withProfileInfo: false);
                                  // login();
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
                                    child: Text('LOG IN',
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
                                Text('Belum punya akun? ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 191, 255, 1))),
                                InkWell(
                                  child: Text('Daftar',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(0, 100, 255, 1),
                                          decoration: TextDecoration.underline)),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterScreen()));
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