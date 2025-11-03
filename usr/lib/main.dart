import 'package:flutter/material.dart';

void main() {
  runApp(const CouldAiApp());
}

class CouldAiApp extends StatelessWidget {
  const CouldAiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CouldAI 3D',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.blueAccent,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: Brightness.dark,
          background: const Color(0xFF121212),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF1E1E1E),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(color: Colors.grey[600]),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16.0),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CouldAI 3D Generator'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Text to 3D'),
              Tab(text: 'Image to 3D'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TextTo3DTab(),
            ImageTo3DTab(),
          ],
        ),
      ),
    );
  }
}

class TextTo3DTab extends StatelessWidget {
  const TextTo3DTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Text to 3D Generation'),
    );
  }
}

class ImageTo3DTab extends StatelessWidget {
  const ImageTo3DTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Image to 3D Generation'),
    );
  }
}
