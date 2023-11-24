import 'package:flutter/material.dart';

class ViewScreen extends StatefulWidget {
  final String hashtag;

  const ViewScreen(this.hashtag, {Key? key}) : super(key: key);

  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.hashtag),
      ),
      body: GestureDetector(
        onTap: () {
          // Obtener el ancho de la pantalla
          double screenWidth = MediaQuery.of(context).size.width;

          // Obtener la posición del toque en X
          double tapPosition = MediaQuery.of(context).size.width / 2;

          // Determinar si el toque fue a la izquierda o derecha
          if (tapPosition < screenWidth / 2) {
            // Toque a la izquierda
            if (_pageController.page != 0) {
              // Cambiar de página sin animación hacia la izquierda
              _pageController.jumpToPage(_pageController.page!.toInt() - 1);
            } else {
              // Estamos en la primera página, cerrar la pantalla
              Navigator.pop(context);
            }
          } else {
            // Toque a la derecha, ir a la página siguiente
            if (_pageController.page != 2) {
              // Cambiar de página sin animación hacia la derecha
              _pageController.jumpToPage(_pageController.page!.toInt() + 1);
            } else {
              // Estamos en la última página, cerrar la pantalla
              Navigator.pop(context);
            }
          }
        },
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(), // Desactivar deslizar
          children: [
            buildPage("Page 1"),
            buildPage("Page 2"),
            buildPage("Page 3"),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String pageText) {
    return Center(
      child: Text(
        pageText,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
