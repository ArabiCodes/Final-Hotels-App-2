import 'package:flutter/material.dart';
import 'package:hotelsapp/main_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bagian gambar header
            SizedBox(
              height: 200,
              child: Image.asset(
                'assets/images/Image-1.png', // Ganti dengan asset gambar Anda
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 20),
            // Bagian logo dan title
            Column(
              children: [
                Image.asset(
                  'assets/images/logo.png', // Ganti dengan asset logo Anda
                  width: 80,
                ),
                const SizedBox(height: 10),
                // const Text(
                //   'Hotels App',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 20),
            // Bagian form login
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _passwordController,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Tindakan ketika tombol ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()),
                        );
                      },
                      child: const Text('Continue'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Column(
                      children: [
                        const Text('Or continue with'),
                        const SizedBox(height: 10),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Tindakan login dengan Google
                          },
                          icon: const Icon(Icons.login),
                          label: const Text('Login With Google'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            // Tindakan untuk navigasi ke halaman register
                          },
                          child: const Text('Register'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
