import 'package:aplikasi_pinterest/Pages/account.dart';
import 'package:flutter/material.dart';
import '../../widgets/pin_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> categories = [
    "Untuk Anda",
    "recom a",
    "recom a",
    "recom a",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ====== APP BAR ======
      appBar: AppBar(
        title: const Text("Minterest"),
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),

      body: Column(
        children: [
          // ====== CHIP KATEGORI ======
          SizedBox(
            height: 45,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                return Chip(
                  label: Text(categories[index]),
                  backgroundColor: Colors.grey.shade200,
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          // ====== GRID PINTEREST (WRAP) ======
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: List.generate(12, (index) {
                    return PinCard(isTall: index % 2 == 0);
                  }),
                ),
              ),
            ),
          ),
        ],
      ),

      // ====== CUSTOM BOTTOM NAVIGATION ======
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: 65,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: const Icon(Icons.home_outlined, size: 30),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, size: 30),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add, size: 32)),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountPage()),
                );
              },
              icon: const Icon(Icons.person_2_outlined, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
