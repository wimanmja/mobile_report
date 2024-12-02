import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("PROFILE"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/contoh.jpg"),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          // Row Nama
          Row(
            children: [
              Container(
                height: 40,
                width: 70,
                margin: EdgeInsets.only(bottom: 4, left: 8, right: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nama',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                  )
                )
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width-102,
                margin: EdgeInsets.only(bottom: 4, left: 8, right: 8),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Get name from API',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  )
                )
              )
            ],
          ),
          // Row Email
          Row(
            children: [
              Container(
                height: 40,
                width: 70,
                margin: EdgeInsets.only(bottom: 4, left: 8, right: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                  )
                )
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width-102,
                margin: EdgeInsets.only(bottom: 4, left: 8, right: 8),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Get email from API',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                  )
                )
              )
            ],
          ),
          // Row Divisi
          Row(
            children: [
              Container(
                height: 40,
                width: 70,
                margin: EdgeInsets.only(bottom: 4, left: 8, right: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Divisi',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                  )
                )
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width-102,
                margin: EdgeInsets.only(bottom: 4, left: 8, right: 8),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Get division from API',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                  )
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}