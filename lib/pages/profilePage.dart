import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 90, 128, 255),
          title: const Text(
            'Profile',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.white,
              fontSize: 30,
              letterSpacing: 0.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              FluentIcons.ios_arrow_ltr_24_regular,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pushNamed(context, '/home'),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            // Add scrolling capability
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: double.infinity,
                    height: 143,
                    decoration: const BoxDecoration(
                      color: Color(0x8CFFFFFF),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Row(
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 90,
                              height: 90,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://picsum.photos/seed/795/600',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                              width: 15), // Add spacing between items
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .stretch, // Stretch children horizontally
                              children: [
                                const SizedBox(height: 15),
                                Expanded(child: buildTextField('Name')),
                                const SizedBox(height: 8),
                                Expanded(child: buildTextField('Grade')),
                                const SizedBox(height: 8),
                                Expanded(child: buildTextField('ID')),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [

                    //* Create Group
                    Container(
                      width: 200,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      // margin: const EdgeInsets.symmetric(horizontal: 60),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/createGroup');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 131, 170, 236),
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, top: 20, bottom: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Create Group",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //* Chatting Room
                    Container(
                      width: 200,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      // margin: const EdgeInsets.symmetric(horizontal: 60),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/chatting');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 131, 170, 236),
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, top: 20, bottom: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Chatting Room",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    //* Reminder
                    Container(
                      width: 200,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      // margin: const EdgeInsets.symmetric(horizontal: 60),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/reminder');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 131, 170, 236),
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, top: 20, bottom: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Reminder",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                    //* Tracking
                    Container(
                      width: 200,
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      // margin: const EdgeInsets.symmetric(horizontal: 60),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 121, 169, 251),
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, top: 20, bottom: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Tracking",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // Widget buildGridItem(String title) {
  //   return Container(
  //     decoration: const BoxDecoration(
  //       boxShadow: [
  //         BoxShadow(
  //           blurRadius: 5,
  //           offset: Offset(0, 2),
  //         ),
  //       ],
  //       gradient: LinearGradient(
  //         colors: [Color(0xFF739BD0), Color.fromARGB(255, 223, 222, 232)],
  //         begin: Alignment.topCenter,
  //         end: Alignment.bottomCenter,
  //       ),
  //       borderRadius: BorderRadius.all(Radius.circular(15)),
  //     ),
  //     alignment: Alignment.center,
  //     child: Text(
  //       title,
  //       style: const TextStyle(
  //         fontFamily: 'Inter Tight',
  //       ),
  //     ),
  //   );
  // }
}
