import 'package:flutter/material.dart';

class AboutUsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  bool _showContactDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              WidgetContainer(
                color: Colors.blue,
                text:
                'Welcome to our cutting-edge application designed for visionary industrialists in India. Our app provides precise predictions and data-driven analysis for establishing unique sustainable industries. With a user-friendly interface, we showcase accurate and consistent information regarding resource availability, infrastructure scope, market trends, and environmental factors. By gathering data from various sources, we ensure valuable insights for making informed decisions. Our application goes beyond analysis by delivering targeted messages to guide users towards suitable alternatives and alerting industrialists to potential environmental impacts. Join us on this journey towards sustainable and innovative industrial development in India.',
              ),
              WidgetContainer(
                color: Colors.pink,
                text:
                'The Desalination Industry: Our app also focuses on the desalination industry. We provide comprehensive data and insights about desalination plants, technology advancements, cost analysis, and environmental impacts. With the increasing demand for fresh water, desalination plays a vital role in ensuring water security and supporting sustainable development. Our app empowers industrialists in the desalination sector by delivering accurate information and guiding them towards optimal decision-making.',
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showContactDetails = !_showContactDetails;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  margin: EdgeInsets.only(top: 20),
                  height: _showContactDetails ? 120 : 0,
                  child: _showContactDetails
                      ? Column(
                    children: [
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Email: info@industriaapp.com',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Phone: +91 1234567890',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                      : null,
                ),
              ),
              SizedBox(height: 200), // Add extra space at the bottom for better scrolling
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showContactDetails = !_showContactDetails;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  height: _showContactDetails ? 0 : 60,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      _showContactDetails ? 'Hide Contact' : 'Show Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetContainer extends StatelessWidget {
  final Color color;
  final String text;

  const WidgetContainer({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
