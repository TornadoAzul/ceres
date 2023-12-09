import 'package:astegod/login.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ListView(
        children: [
          ListTile(
            title: Text(
              "Esta es una versión de prueba de Codrecup y su plataforma global. Este proyecto está sujeto a cambios en el futuro de diferentes formas.",
              style: TextStyle(fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Ionicons.create_outline, size: 24),
            title: Text(
              "Acceder",
              style: TextStyle(fontSize: 24),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
          const ListTile(
            leading: Icon(Ionicons.search_outline, size: 24),
            title: Text(
              "Buscar en ástegod",
              style: TextStyle(fontSize: 24),
            ),
          ),
          const ListTile(
            leading: Icon(Ionicons.cube_outline, size: 24),
            title: Text(
              "Ajustes de cuenta",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
