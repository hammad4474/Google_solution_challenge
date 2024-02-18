import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _currentSliderValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff132d29),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              subtitle: Text(
                'demoEmail@gmail.com',
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white),
              ),
              title: Text(
                'Demo Name',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              leading: CircleAvatar(),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Filter Sensitivity',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Slider(
                activeColor: Colors.green,
                max: 100,
                divisions: 10,
                value: _currentSliderValue,
                onChanged: (value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                }),
            SizedBox(
              height: 260,
            ),
            services(text: 'Terms of Services'),
            Divider(),
            services(text: 'FAQs'),
            Divider(),
            services(text: 'Switch Account'),
            Divider(),
            services(text: 'Log Out'),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class services extends StatelessWidget {
  String text = '';
  services({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
