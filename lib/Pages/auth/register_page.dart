import 'package:aplikasi_pinterest/Pages/auth/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              SizedBox(
                height: 20,
                width: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: null,
                ),
              ),
              SizedBox(width: 105),

              Container(
                width: 200,
                height: 20,
                decoration: BoxDecoration(
                   color: Colors.grey,
                   borderRadius: BorderRadius.circular(30)
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 100, right: 100, left: 100),
            height: 400, // JANGAN LUPA HAPUS LINE INI!
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 7),
                            width: 16,
                            decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          Container(
                            width: 260,
                            decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(10)
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4,),
                
                Container(
                  padding: EdgeInsets.all(7),
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 7),
                        width: 16,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 260,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Center(
                  child: Container(
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: 
                    Container(
                      margin: EdgeInsets.only(
                        top: 7,
                        bottom: 7,
                        left: 7,
                        right: 70
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(10)
                      ),
                    )
                ),
                SizedBox(height: 4),

                Container(
                  padding: EdgeInsets.all(7),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      SizedBox(width: 160),

                      Container(
                        width: 26,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(20)
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.push(
                      //  context,
                      //  MaterialPageRoute(builder: (context) => page),
                      //);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Text('Masuk'),
                  ),
                ),
                SizedBox(height: 10),

                Center(
                  child: Container(
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
