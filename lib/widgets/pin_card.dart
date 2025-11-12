import 'package:flutter/material.dart';

class PinCard extends StatelessWidget {
  final bool isTall;

  const PinCard({super.key, this.isTall = false});

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - 36) / 2;
    double height = isTall ? 220 : 150;

    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar abu-abu
          Container(
            height: height,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
          ),

          const SizedBox(height: 6),

          // Title
          const Text(
            "title content",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),

          // Titik titik kanan
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              "...",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
