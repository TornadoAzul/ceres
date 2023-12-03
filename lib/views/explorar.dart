import 'package:astegod/data/data.dart';
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
      body: PageView.builder(
        itemCount: datos.length,
        itemBuilder: (context, index) {
          return _buildPage(datos[index]);
        },
      ),
    );
  }

  Widget _buildPage(Map<String, dynamic> data) {
    String id = data['id'];
    if (data['tipo'] == Tipo.per) {
      id = '@$id';
    } else if (data['tipo'] == Tipo.has) {
      id = '#$id';
    }

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Flexible(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                data['text'],
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 45.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        id,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Icon(
                    Ionicons.add_circle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
