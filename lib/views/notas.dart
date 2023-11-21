import 'package:aaroic/data/data.dart';
import 'package:aaroic/views/view.dart';
import 'package:flutter/material.dart';
import 'package:masonry_grid/masonry_grid.dart';

class NotasView extends StatefulWidget {
  const NotasView({Key? key}) : super(key: key);

  @override
  State<NotasView> createState() => _NotasViewState();
}

class _NotasViewState extends State<NotasView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Align(
                alignment:
                    Alignment.centerLeft, // Alinea el texto a la izquierda
                child: Text(
                  "Destacado",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MasonryGrid(
              column: 2,
              children: List.generate(
                datos.length,
                (index) {
                  String hashtag = '#${datos[index]['hashtag'] ?? ''}';

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewScreen(hashtag)),
                      );
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              hashtag,
                              style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                fontSize: 44,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
