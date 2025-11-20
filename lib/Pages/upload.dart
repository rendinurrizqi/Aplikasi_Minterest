import 'package:flutter/material.dart';

class PostingPage extends StatelessWidget {
  const PostingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Posting", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Stack(
        children: [
          // AREA KOSONG ATAS
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),

          // ===== PANEL BAWAH =====
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 190,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),

              child: Column(
                children: [
                  // ICON KECIL + BAR PANJANG
                  Row(
                    children: [
                      Container(
                        width: 26,
                        height: 26,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC9C9C9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // 3 ICON SQUARE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [_menuButton(), _menuButton(), _menuButton()],
                  ),

                  const SizedBox(height: 8),

                  // LABELS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [_menuText(), _menuText(), _menuText()],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ===== REUSABLE =====
Widget _menuButton() {
  return Container(
    width: 65,
    height: 65,
    decoration: BoxDecoration(
      color: const Color(0xFFC9C9C9),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(
      child: Container(
        width: 28,
        height: 28,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    ),
  );
}

class _menuText extends StatelessWidget {
  const _menuText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
