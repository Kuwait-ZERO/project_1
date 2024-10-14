import 'package:flutter/material.dart';
import 'branch_list_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 181, 205, 240), // Customizing AppBar color
        title: Image.asset(
          'assets/images/burganbar.png',
          height: 50,
          width: 100,
          fit: BoxFit.contain,
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'), // Background image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Bank Logo
                Center(
                  child: Image.asset(
                    'assets/images/burgan.jpg',
                    height: 150,
                  ),
                ),
                SizedBox(height: 20),

                // Bank Description with Custom Theme
                Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),


                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 133, 201, 250),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'About Burgan Bank',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900, // Custom Text Color
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Founded in 1977, Burgan Bank has grown to become one of the leading financial institutions in Kuwait and the MENAT region. '
                          'With a strong focus on corporate banking, we have extended our expertise to serve a wide range of clients, including individuals '
                          'and private banking customers, offering tailored financial solutions to meet their needs.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87, // Custom Text Color
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'At Burgan Bank, we are committed to innovation and excellence. Our customer-centric approach is reflected in our continuous investment '
                          'in state-of-the-art technology and our pursuit of operational excellence, enabling us to deliver secure, efficient, and innovative banking services.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'As we look to the future, Burgan Bank remains dedicated to upholding the highest standards of financial integrity, trust, and responsibility.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),

                // Dropdown Button for Navigation
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    value: _selectedOption,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue.shade900, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue.shade900, width: 2),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    hint: Text(
                      'Select an Option',
                      style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.bold),
                    ),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue.shade900,
                    ),
                    dropdownColor: Colors.white,
                    isExpanded: true,
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    items: <String>['Explore Branches', 'View Services', 'Contact Us'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedOption = newValue;
                      });

                      // Navigate based on the selected option
                      if (_selectedOption == 'Explore Branches') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BranchListPage()),
                        );
                      }
                      // Add more navigation based on other selections if needed
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
