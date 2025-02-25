import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'splash.dart';

class HomePage extends StatelessWidget {
  String formattedDate = DateFormat('EEEE, d', 'en_US').format(DateTime.now());

  String f1 = DateFormat('EEEE, d', 'en_US').format(DateTime.now());
  String f2 = DateFormat('d', 'en_US').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(formattedDate),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.apps)),
        actions: [Icon(Icons.calendar_month)],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(left: 5, top: 40),
            height: 130,
            width: 350,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: 28,
                  child: const Icon(Icons.menu_book,
                      size: 32, color: Colors.greenAccent),
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Notification!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Now is the time to read the book,\nyou can change it in settings.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )),
                Icon(Icons.info_outline, color: Colors.white54, size: 20),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                boiteHeure,
                boiteHeure,
                boiteHeure,
                boiteHeure,
                boiteHeure,
                boiteHeure,
                boiteHeure,
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Text('Tuesday habit'),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                child: Text('See all'),
              )
            ],
          ),
          boiteActivite,
          boiteActivite,
        ]),
      ),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: ''),
        NavigationDestination(icon: Icon(Icons.pause), label: ''),
        NavigationDestination(icon: Icon(Icons.trending_up), label: ''),
        NavigationDestination(icon: CircleAvatar(), label: '')
      ]),
    );
  }

  Widget boiteHeure = Container(
    padding: EdgeInsets.only(top: 10),
    margin: EdgeInsets.only(top: 15, right: 15),
    width: 70,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.transparent, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          )
        ]),
    child: Column(
      children: [
        Text('Tue'),
        SizedBox(
          height: 20,
        ),
        Text('06'),
      ],
    ),
  );

  Widget boiteActivite = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.only(left: 20, top: 10),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16.0),
        ),
        width: 150,
        height: 200,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Image.network(
                      width: 50,
                      height: 50,
                      'https://static-00.iconduck.com/assets.00/man-running-medium-emoji-1849x2048-1lr88kxi.png'),
                ),
                Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Icon(Icons.verified_rounded))
              ],
            ),
            Container(
                margin: EdgeInsets.only(right: 50, top: 60),
                child: Text('Bicycle')),
            Container(child: Text('07:00 for 10km')),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: 10,
          top: 10,
          right: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16.0),
        ),
        width: 150,
        height: 200,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Image.network(
                      width: 50,
                      height: 50,
                      'https://static-00.iconduck.com/assets.00/man-running-medium-emoji-1849x2048-1lr88kxi.png'),
                ),
                Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Icon(Icons.verified_rounded))
              ],
            ),
            Container(
                margin: EdgeInsets.only(right: 50, top: 60),
                child: Text('Bicycle')),
            Container(child: Text('07:00 for 10km')),
          ],
        ),
      )
    ],
  );
}
