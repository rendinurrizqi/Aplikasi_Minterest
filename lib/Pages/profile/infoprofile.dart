import 'package:aplikasi_pinterest/Pages/profile/profile_page.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'My Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          // Profile Section (Circle + Name + Icon)
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Profile Picture
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                  ),
                ),
                const SizedBox(width: 16),
                // Name/Username
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 14,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        height: 12,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 20,
                  height: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.grey[300],
                    ),
                    child: null,
                  ),
                ), // Arrow Icon
              ],
            ),
          ),

          const SizedBox(height: 8),

          // Menu Items List
          _buildMenuItem(short: false),
          _buildMenuItem(short: true),
          _buildMenuItem(short: false),
          _buildMenuItem(short: true),
          _buildMenuItem(short: false),
          _buildMenuItem(short: true),
          _buildMenuItem(short: false),
          _buildMenuItem(short: false),
          _buildMenuItem(short: true),
          _buildMenuItem(short: false),
          _buildMenuItem(short: true),
          _buildMenuItem(short: false),
          _buildMenuItem(short: true),
          _buildMenuItem(short: false),
          _buildMenuItem(short: false),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildMenuItem({required bool short}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          // Menu Text
          Expanded(
            child: Container(
              height: 14,
              width: short ? 100 : double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(width: 12),
          // Arrow/Circle Icon
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
    );
  }
}
