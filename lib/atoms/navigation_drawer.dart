import 'package:cerebro_mobile/theme/colors.dart';
import 'package:flutter/material.dart';

class CerebroNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65, // Adjust the width as needed
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                cerebroBlue200, Color.fromRGBO(102, 143, 183, 1)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.only(left:20),
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      cerebroBlue200, Color.fromRGBO(102, 143, 183, 1)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/SchoolLogo.png'),
                      radius: 30,
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ABC School',
                            style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'of Cavite',
                            style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard, color: Colors.white),
                title: Text('Dashboard', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/dashboard'); // Navigate to Dashboard
                },
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text('Profile', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/profile'); // Navigate to Profile
                },
              ),
              ListTile(
                leading: Icon(Icons.school, color: Colors.white),
                title: Text('Admission', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/admission'); // Navigate to Admission
                },
              ),
              ListTile(
                leading: Icon(Icons.list, color: Colors.white),
                title: Text('Classes', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/classes'); // Navigate to Classes
                },
              ),
              ListTile(
                leading: Icon(Icons.money, color: Colors.white),
                title: Text('Dues', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/dues'); // Navigate to Dues
                },
              ),
              ListTile(
                leading: Icon(Icons.assignment, color: Colors.white),
                title: Text('Grades', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/grades'); // Navigate to Grades
                },
              ),
              ListTile(
                leading: Icon(Icons.request_quote, color: Colors.white),
                title: Text('Requests', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/requests'); // Navigate to Requests
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}