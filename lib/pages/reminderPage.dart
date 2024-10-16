import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({Key? key}) : super(key: key);

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  final _textFieldFocusNode = FocusNode();

  String? _selectedValue1;
  String? _selectedValue2;

  @override
  void dispose() {
    _textController.dispose();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAE7FA),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 128, 255),
        title: const Text(
          'Reminder',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            color: Colors.white,
            fontSize: 30,
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),

              // Assignment Section
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(8)), // Set the border radius
                  color: Color.fromARGB(255, 121, 161, 255), // Background color
                ),
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Assignment',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white, // Change text color to white
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        ListTile(
                          title: const Text(
                            'Linear Algebra',
                            style: TextStyle(
                                color: Colors.white), // Ensure text is white
                          ),
                          leading: Radio(
                            value: 'Linear Algebra',
                            groupValue: _selectedValue1,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue1 = value as String?;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            'Web Programming 2',
                            style: TextStyle(
                                color: Colors.white), // Ensure text is white
                          ),
                          leading: Radio(
                            value: 'Web Programming 2',
                            groupValue: _selectedValue1,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue1 = value as String?;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            'C++',
                            style: TextStyle(
                                color: Colors.white), // Ensure text is white
                          ),
                          leading: Radio(
                            value: 'C++',
                            groupValue: _selectedValue1,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue1 = value as String?;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              //* School Fees Section    
              Container(
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(8)), // Add border radius
                  color: Color.fromARGB(255, 121, 161, 255), // Background color
                ),
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'School Fees',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white, // Change text color to white
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        ListTile(
                          title: const Text(
                            'Khmer',
                            style: TextStyle(
                                color: Colors.white), // Ensure text is white
                          ),
                          leading: Radio(
                            value: 'Khmer',
                            groupValue: _selectedValue2,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue2 = value as String?;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            'English',
                            style: TextStyle(
                                color: Colors.white), // Ensure text is white
                          ),
                          leading: Radio(
                            value: 'English',
                            groupValue: _selectedValue2,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue2 = value as String?;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            'Chinese',
                            style: TextStyle(
                                color: Colors.white), // Ensure text is white
                          ),
                          leading: Radio(
                            value: 'Chinese',
                            groupValue: _selectedValue2,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue2 = value as String?;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Create Your Task Section
              const Text(
                'Create your Task',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Image.asset(
                      "lib/images/add.png",
                      height: 20,
                      width: 20,
                      color: const Color.fromARGB(255, 89, 88, 88),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: _textController,
                        focusNode: _textFieldFocusNode,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'TextField',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
