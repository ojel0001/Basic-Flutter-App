import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.deepOrangeAccent,
        ),
        fontFamily: 'Doto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF606C38),
          centerTitle: true,
          elevation: 2,
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: Color(0xFFDDA15E),
          textColor: Colors.black,
        ),
      ),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter App',
          style: TextStyle(
            fontFamily: "SixtyfourConvergence",
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFEEE5E9),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                'Images and Assets',
                style: TextStyle(
                  fontFamily: 'EduAUVICWANTPre',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A7856),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        'assets/images/s${index + 1}.jpg',
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SectionHeader(title: "ListTiles with Fonts"),
            Container(
              margin: const EdgeInsets.fromLTRB(9, 0, 9, 10),
              decoration: BoxDecoration(
                color: const Color(0xFFC1D7AE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                leading: Icon(Icons.vape_free),
                title: Text(
                  'ListTile with Regular Font',
                  style: TextStyle(
                    fontFamily: 'EduAUVICWANTPre',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(9, 0, 9, 10),
              decoration: BoxDecoration(
                color: const Color(0xFFC1D7AE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.all_inclusive_rounded),
                ),
                title: Text(
                  'ListTile with Bold Font',
                  style: TextStyle(
                    fontFamily: 'EduAUVICWANTPre',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(9, 0, 9, 10),
              decoration: BoxDecoration(
                color: const Color(0xFFC1D7AE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                leading: Icon(Icons.cruelty_free_rounded),
                title: Text(
                  'ListTile with Medium Font',
                  style: TextStyle(
                    fontFamily: 'EduAUVICWANTPre',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              decoration: BoxDecoration(
                color: const Color(0xFFC1D7AE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                trailing: Icon(Icons.arrow_forward),
                title: Text('Default Device Font'),
              ),
            ),
            const SizedBox(height: 20),
            const SectionHeader(title: "Local Images"),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        'assets/images/s${index + 4}.jpg',
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'EduAUVICWANTPre',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF4A7856),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
