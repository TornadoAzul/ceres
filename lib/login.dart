import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: GestureDetector(
            child: SizedBox(
              height: 29,
              child: SvgPicture.asset(
                Theme.of(context).brightness == Brightness.dark
                    ? "assets/imagenes/isotipo-oscuro.svg"
                    : "assets/imagenes/isotipo-claro.svg",
              ),
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(top: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ástegod",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 23,
                      height: 1.2,
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                "Únete a ástegod. El hogar del literalmente ahora.",
                style: TextStyle(
                    fontSize: 40,
                    height: 1.2,
                    color: Theme.of(context).colorScheme.onSecondary),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                "Elige cual será tu método para iniciar sesión.",
                style: TextStyle(
                    fontSize: 24,
                    height: 1.2,
                    color: Theme.of(context).colorScheme.onSecondary),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.onBackground,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Acceder con Google",
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.onBackground,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Acceder con Apple",
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
