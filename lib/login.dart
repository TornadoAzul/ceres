import 'package:aaroic/inicio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Theme.of(context).brightness == Brightness.dark
                ? "assets/imagenes/comienzo-claro.svg"
                : "assets/imagenes/comienzo-oscuro.svg",
            height: 230,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              "Aaroic",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                height: 1.2,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              "La biblioteca digital de Cuartio. Disponible para la humanidad.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  height: 1.2,
                  color: Theme.of(context).colorScheme.onBackground),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const InicioScreen()),
                );
              },
              child: Text(
                "Buscar un libro",
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
