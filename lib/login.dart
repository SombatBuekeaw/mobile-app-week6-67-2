import 'package:flutter/material.dart';
import 'home_screen.dart';  // นำเข้าคลาส HomeScreen
import 'sign_up_screen.dart'; // นำเข้าคลาส SignUpScreen (หน้าลงทะเบียน)

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers สำหรับ TextField
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // ตัวแปรที่จะใช้ในการเปิดปิดการแสดงรหัสผ่าน
  bool _obscureText = true;

  // ฟังก์ชันการตรวจสอบการล็อกอิน
  void _login() {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      // ถ้าผู้ใช้กรอกข้อมูลไม่ครบ
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Please fill in both fields'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // หากข้อมูลครบถ้วน จะทำการล็อกอิน (แค่พิมพ์ข้อมูลลงในคอนโซล)
      print('Username: $username');
      print('Password: $password');

      // เมื่อข้อมูลล็อกอินถูกต้อง ไปยังหน้า HomeScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // กำหนดพื้นหลังให้ดูดี
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // หัวข้อ Sign in
                const Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 20), // ช่องว่างระหว่างหัวข้อและโลโก้

                // เพิ่มโลโก้ในตำแหน่งที่เหมาะสม
                Image.network(
                  'https://static.vecteezy.com/system/resources/thumbnails/027/205/841/small_2x/login-and-password-concept-3d-illustration-computer-and-account-login-and-password-form-page-on-screen-3d-illustration-png.png',
                  height: 350,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 30), // ช่องว่างหลังโลโก้

                // ฟอร์มกรอกข้อมูล
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // ชื่อผู้ใช้
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16), // ช่องว่างระหว่างฟิลด์

                      // รหัสผ่าน
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscureText,  // ใช้ _obscureText เพื่อแสดง/ซ่อนรหัสผ่าน
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility, // เปลี่ยนไอคอนตามสถานะ
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText; // สลับสถานะการแสดงรหัสผ่าน
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 24), // ช่องว่างระหว่างฟิลด์และปุ่ม

                      // ปุ่ม Login
                      ElevatedButton(
                        onPressed: _login,
                        child: const Text(
                          'Sign in-App Account',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50), // ขยายปุ่มให้เต็ม
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                        ),
                      ),
                      const SizedBox(height: 16), // ช่องว่างหลังปุ่ม

                      // ปุ่ม Sign Up ที่โดดเด่น
                      GestureDetector(
                        onTap: () {
                          // ไปยังหน้าลงทะเบียน
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUpScreen()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.blue, width: 2), // กรอบสีฟ้า
                            color: Colors.white, // สีพื้นหลังปุ่มเป็นขาว
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: const Offset(0, 2), // Position of the shadow
                              ),
                            ],
                          ),
                          child: const Text(
                            "Don't have an account? Sign up",
                            style: TextStyle(
                              color: Colors.blue, // สีข้อความเป็นฟ้า
                              fontSize: 16, // ขนาดฟอนต์ปกติ
                              fontWeight: FontWeight.bold, // ตัวหนา
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20), // ช่องว่างหลังปุ่ม Sign Up
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

