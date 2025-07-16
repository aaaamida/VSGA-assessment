import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp(
                options: DefaultFirebaseOptions.currentPlatform,
        );
        runApp(const MyApp());
}

class MyApp extends StatelessWidget {
        const MyApp({super.key});

        @override
        Widget build(BuildContext context) {
                return MaterialApp(
                        title: 'Lapak Nusantara',
                        theme: ThemeData(
                                colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFFF91AF)),
                        ),
                        home: const MyHomePage(title: 'Lapak Nusantara'),
                        debugShowCheckedModeBanner: false,
                );
        }
}

class MyHomePage extends StatefulWidget {
        const MyHomePage({super.key, required this.title});

        final String title;

        @override
        State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
        @override
        Widget build(BuildContext context) {
                return Scaffold(
                        appBar: AppBar(
                                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                                title: Text(widget.title),
                        ),
                        body: Center(
                                
                        ),
                );
        }
}
