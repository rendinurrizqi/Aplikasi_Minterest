import 'package:flutter/material.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class RouteNames {
  static const String home = '/home_page.dart';
}

class _MyAccountPageState extends State<MyAccountPage> {
  int _selectedIndex = 3; // posisi tab aktif (My Account)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Tambahkan logika navigasi sesuai kebutuhan
    // Contoh:
    // if (index == 0) Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('My Account', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Header profil
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 14, width: 120, color: Colors.grey[400]),
                    const SizedBox(height: 8),
                    Container(height: 12, width: 80, color: Colors.grey[350]),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Daftar placeholder item pengaturan
            for (int i = 0; i < 10; i++) ...[
              Container(
                height: 18,
                width: double.infinity,
                color: Colors.grey[350],
              ),
              const SizedBox(height: 20),
            ],
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
