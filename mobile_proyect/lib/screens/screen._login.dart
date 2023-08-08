import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B2223),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bienvenido de nuevo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Es un placer verte por aquí otra vez.\n\nA continuación ingresa tus credenciales",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto",
              ),
            ),
            const SizedBox(height: 40),
            Image.asset('Imagen_Login.png'),
            const SizedBox(height: 30),
            SizedBox(
              width: 301,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Username",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Roboto",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your username',
                      hintStyle: TextStyle(
                        color: const Color(0xFF000000).withOpacity(0.44),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Roboto",
                      ),
                    ),
                    style: TextStyle(
                      color: const Color(0xFF000000).withOpacity(0.44),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 301,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Roboto",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        color: const Color(0xFF000000).withOpacity(0.44),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Roboto",
                      ),
                    ),
                    style: TextStyle(
                      color: const Color(0xFF000000).withOpacity(0.44),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/forgot_password");
              },
              child: const Text(
                "Forgot Password",
                style: TextStyle(
                  color: Color(0xFF0EF6CC),
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0EF6CC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(260, 50),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Color(0xFF1B2223),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Inter",
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don´t have an account?  ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/sign_up");
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xFF0EF6CC),
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
