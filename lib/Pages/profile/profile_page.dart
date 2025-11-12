import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body TIDAK menggunakan Stack -> agar kotak ikut scroll
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Row untuk dua kotak atas (kiri & kanan) -> ikut scroll bersama Column
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Kotak kiri
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "", // isi jika ingin teks
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    // Kotak kanan
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "", // isi jika ingin teks
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Kotak di atas foto profil (besar, tengah)
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Kotak kiri
                    Container(
                      width: 500,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "", // isi jika ingin teks
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    // Kotak kanan
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                    ), 
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                    ), 

                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Foto profil
              const CircleAvatar(
                radius: 65,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),

              const SizedBox(height: 20),
              
              // 🔹 Kotak di bawah foto profil
              Container(
                width: double.infinity,
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // 🔹 Kotak kecil lagi di bawahnya
              Container(
                width: 100,
                height: 10,
                margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 0,),

             Container(
                width: 200,
                height: 20,
                margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
             
              // // 🔹 Dua tombol di tengah
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ElevatedButton(onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.grey.shade400
              //     ), child: const Text("")),
              //     const SizedBox(width: 10),
              //     OutlinedButton(onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.grey.shade400
              //     ), child: const Text("")),
              //   ],
              // ),

              const SizedBox(height: 20),

              // 🔹 Tab Bar
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Kotak kiri
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "", // isi jika ingin teks
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    // Kotak kanan
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "", // isi jika ingin teks
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Kotak kiri
                    Container(
                      width: 100,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "", // isi jika ingin teks
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    // Kotak kanan
                    Container(
                      width: 100,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "", // isi jika ingin teks
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40,), 

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Kotak kiri
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "", // isi jika ingin teks
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    // Kotak kanan
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "", // isi jika ingin teks
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}