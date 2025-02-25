import 'package:flutter/material.dart';
import 'HomePage.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose habit',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'choose your daily habits, you can choose moore than one',
                style: TextStyle(fontSize: 20),
              ),
              elements,
              elements,
              elements,
              elements,
              Container(
                  margin: EdgeInsets.only(left: 130, top: 0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text('Get Started !')))
            ],
          ),
        ));
  }
}

Widget elements = Row(
  children: [
    boite(
        img:
            'https://static-00.iconduck.com/assets.00/man-running-medium-emoji-1849x2048-1lr88kxi.png',
        txt: 'Work out'),
    boite(
        img:
            'https://static-00.iconduck.com/assets.00/man-running-medium-emoji-1849x2048-1lr88kxi.png',
        txt: 'Work out'),
  ],
);

class boite extends StatelessWidget {
  String img;
  String txt;

  boite({required this.img, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.transparent, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            )
          ]),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 10),
      width: 150,
      height: 100,
      child: Column(
        children: [
          Image.network(
            img,
            width: 50,
            height: 50,
          ),
          Text(txt),
        ],
      ),
    );
  }
}
