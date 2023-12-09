import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ExplorarView extends StatefulWidget {
  const ExplorarView({Key? key}) : super(key: key);

  @override
  State<ExplorarView> createState() => _ExplorarViewState();
}

class _ExplorarViewState extends State<ExplorarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    "Esto es una imagen. Una hermosa imagen.",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                const ListTile(
                  title: Text(
                    "Quizá no entiendas, pero esto es Codrecup. La nueva plataforma para poder ver cosas increíbles y ser parte de la internet.",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                const ListTile(
                  leading: Icon(Ionicons.reader, size: 24),
                  title: Text(
                    "Más información",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                const ListTile(
                  leading: Icon(Ionicons.medical, size: 24),
                  title: Text(
                    "Calculadora",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.all(8),
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "Objeto $index",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
