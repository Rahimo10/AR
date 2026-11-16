import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  // التأكد من تهيئة واجهة فلاتر قبل تشغيل التطبيق
  WidgetsFlutterBinding.ensureInitialized();
  
  // تحميل ملف الإعدادات (.env) الذي سيحتوي على مفاتيح API لاحقاً
  await dotenv.load(fileName: ".env");
  
  runApp(const FormationApp());
}

class FormationApp extends StatelessWidget {
  const FormationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'التكوين المهني DZ',
      debugShowCheckedModeBanner: false, // إخفاء شريط التصحيح الأزرق
      theme: ThemeData(
        primarySwatch: Colors.green, // اللون الأخضر (لون العلم الجزائري)
        textTheme: GoogleFonts.cairoTextTheme(), // استخدام خط Cairo العربي الجميل
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
                    color: Color(0xFF006233)
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'جاري تحضير الواجهات والميزات...',
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