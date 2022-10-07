import 'package:flutter/material.dart';
import 'package:navigationdrawer/odabir1.dart';
import 'package:navigationdrawer/odabir2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: const RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Widget> pages = const [Odabir1(), Odabir2()]; // za body

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Navigation Drawer from Left',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 223, 223, 223),
              ),
              child: Center(
                child: Text(
                  "Izbornik",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.house),
              title: const Text("Odabir 1"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Odabir1()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.park),
              title: const Text("Odabir 2"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Odabir2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.holiday_village),
              title: const Text("Odabir 3"),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Odabir1(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
