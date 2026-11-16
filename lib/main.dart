import 'package:flutter/material.dart';

void main() {
  runApp(const FormationApp());
}

class FormationApp extends StatelessWidget {
  const FormationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'التكوين المهني DZ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.school, size: 80, color: Color(0xFF006233)),
                SizedBox(height: 20),
                Text(
                  'مرحباً بك في تطبيق\nالتكوين المهني الجزائري',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF006233),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'الإصدار الأول - جاري التطوير',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
