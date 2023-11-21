import 'package:aaroic/views/chat.dart';
import 'package:aaroic/views/notas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  List<Widget> vistas = [];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    vistas = [const NotasView(), const ChatView()];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Center(
          child: GestureDetector(
            child: SizedBox(
              height: 29,
              child: SvgPicture.asset(
                Theme.of(context).brightness == Brightness.dark
                    ? "assets/imagenes/isotipo-oscuro.svg"
                    : "assets/imagenes/isotipo-claro.svg",
              ),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: vistas,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Theme.of(context).scaffoldBackgroundColor,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: _selectedIndex == 0
                  ? Icon(
                      Ionicons.play_circle,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Theme.of(context).colorScheme.onBackground
                          : Theme.of(context).primaryColor,
                    )
                  : Icon(
                      Ionicons.play_circle_outline,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              onPressed: () {
                _onItemTapped(0);
              },
            ),
            IconButton(
              icon: _selectedIndex == 1
                  ? Icon(
                      Ionicons.person_circle,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Theme.of(context).colorScheme.onBackground
                          : Theme.of(context).primaryColor,
                    )
                  : Icon(
                      Ionicons.person_circle_outline,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              onPressed: () {
                _onItemTapped(1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
