import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget skeletonBox({
    double height = 20,
    double width = double.infinity,
    EdgeInsets margin = EdgeInsets.zero,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(12)),
  }) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: borderRadius,
      ),
    );
  }

  BottomNavigationBar buildBottomNav(BuildContext context, int currentIndex) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        if (index == currentIndex) return;
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/search');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/posting');
            break;
          case 3:
            Navigator.pushReplacementNamed(context, '/account');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const currentIndex = 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/my-account');
            },
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNav(context, currentIndex),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Row(
            children: [
              CircleAvatar(radius: 32, backgroundColor: Colors.grey[300]),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    skeletonBox(height: 18, width: 120),
                    const SizedBox(height: 6),
                    skeletonBox(height: 16, width: 180),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: const Icon(Icons.open_in_new),
              ),
            ],
          ),
          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              skeletonBox(height: 24, width: 80),
              skeletonBox(height: 24, width: 80),
              skeletonBox(height: 24, width: 80),
            ],
          ),
          const SizedBox(height: 16),

          Row(
            children: [
              skeletonBox(
                height: 28,
                width: 120,
                borderRadius: BorderRadius.circular(16),
              ),
              const SizedBox(width: 8),
              skeletonBox(
                height: 28,
                width: 80,
                borderRadius: BorderRadius.circular(16),
              ),
              const SizedBox(width: 8),
              skeletonBox(
                height: 28,
                width: 60,
                borderRadius: BorderRadius.circular(16),
              ),
            ],
          ),
          const SizedBox(height: 16),

          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.7,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
              return skeletonBox(
                height: 120,
                borderRadius: BorderRadius.circular(12),
              );
            },
          ),
        ],
      ),
    );
  }
}
