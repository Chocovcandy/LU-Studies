// ignore_for_file: avoid_print, unused_import, unused_field

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;
  // late HomePageModel _model;

  // final scaffTextStyle;
  // @override
  // void initState() {
  //   super.initState();
  //   _model = createModel(context, () => HomePageModel());

  //   WidgetsBinding.instance.addPostFrameCallTextStyle
  // void dispose() {
  //   _modTextStyle
  // }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // var defaultPadding = screenSize.width * 0.04;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        //key: scaffoldKey,
        backgroundColor: const Color(0xFFDAE7FA),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 90, 128, 255),
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Container(
                width: 200,
                height: 200,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/99/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Name : Uni ',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Manrope',
                        letterSpacing: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Dept : Comp. Sci.',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                      child: Text(
                        'ID : CS172024',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                      child: Text(
                        'Year : 2',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: const [],
            centerTitle: false,
          ),
        ),
        body: Expanded(
          // top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(38, 25, 0, 0),
                child: Container(
                  width: 348,
                  height: 65,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 136, 174, 240),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: const Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Welcome back, Uni ;)!',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Manrope',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 10),
                        child: Text(
                          'Ready to start your studying?',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(38, 20, 0, 0),
                child: Container(
                  width: 360,
                  height: 166,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 136, 174, 240),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(140, 4, 0, 0),
                            child: Text(
                              'Reminder',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 20,
                                letterSpacing: 0.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'Php Assignment',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(128, 0, 0, 0),
                              child: Text(
                                'Due 00:00AM',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(1, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'School fee for this month',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
                              child: Text(
                                'Due 31st.Oct.24',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/reminder');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            backgroundColor:
                                const Color.fromARGB(255, 59, 97, 223),
                            textStyle: const TextStyle(
                              fontFamily: 'Manrope',
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 0.0,
                            ),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'View More Reminders',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                child: Container(
                  width: 360,
                  height: 166,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 136, 174, 240),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(140, 10, 0, 0),
                            child: Text(
                              'Your Course',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 20,
                                letterSpacing: 0.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'AI Course',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(190, 0, 0, 0),
                              child: Text(
                                'Monday',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'C++ Advanced',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(160, 0, 0, 0),
                              child: Text(
                                'Tuesday',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Manrope',
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            backgroundColor:
                                const Color.fromARGB(255, 59, 97, 223),
                            textStyle: const TextStyle(
                              fontFamily: 'Manrope',
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 0.0,
                            ),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'View More Courses',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                child: Container(
                  width: 360,
                  height: 233,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 136, 174, 240),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(140, 10, 0, 0),
                            child: Text(
                              'Study Group',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 20,
                                letterSpacing: 0.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: Text(
                                        'Linear Algebra Group',
                                        style: TextStyle(
                                          fontFamily: 'Manrope',
                                          color: Colors.white,
                                          fontSize: 16,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 80, 0),
                                  child: Text(
                                    '5 Members',
                                    style: TextStyle(
                                      fontFamily: 'Manrope',
                                      fontSize: 12,
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  120, 0, 0, 0),
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  backgroundColor:
                                      const Color.fromARGB(255, 59, 97, 223),
                                  textStyle: const TextStyle(
                                    fontFamily: 'Manrope',
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                  ),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Join',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(1, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Physic Serway Group',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Manrope',
                                                fontSize: 16,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 80, 0),
                                        child: Text(
                                          '5 Members',
                                          style: TextStyle(
                                            fontFamily: 'Manrope',
                                            fontSize: 12,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  120, 0, 0, 0),
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  backgroundColor:
                                      const Color.fromARGB(255, 59, 97, 223),
                                  textStyle: const TextStyle(
                                    fontFamily: 'Manrope',
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                  ),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Join',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            backgroundColor:
                                const Color.fromARGB(255, 59, 97, 223),
                            textStyle: const TextStyle(
                              fontFamily: 'Manrope',
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 0.0,
                            ),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'View More Groups',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: const Color.fromARGB(255, 94, 131, 255),
          animationDuration: Duration(milliseconds: 300),
          items: <Widget>[
            Column(
              children: [
                Image.asset(
                  "lib/images/home.png",
                  height: 25,
                  width: 25,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fit: BoxFit.cover,
                ),
                const Text('Home'), // Optional: Add a label under the image
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "lib/images/chat.png",
                  height: 30,
                  width: 30,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fit: BoxFit.cover,
                ),
                const Text('Chat'), // Optional: Add a label under the image
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "lib/images/create-group-button.png",
                  height: 25,
                  width: 25,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fit: BoxFit.cover,
                ),
                const Text('Group '), // Optional: Add a label under the image
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "lib/images/profile.png",
                  height: 30,
                  width: 30,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fit: BoxFit.cover,
                ),
                const Text('Profile'), // Optional: Add a label under the image
              ],
            ),
          ],
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/home');
                break;
              case 1:
                Navigator.pushNamed(context, '/chatting');
                break;
              case 2:
                Navigator.pushNamed(context, '/createGroup');
                break;
              case 3:
                Navigator.pushNamed(context, '/profile');
                break;
              default:
                break;
            }
          },
        ),
      ),
    );
  }
}
