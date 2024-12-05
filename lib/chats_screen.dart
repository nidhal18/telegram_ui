import 'package:flutter/material.dart';
import 'package:telegram_ui/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ChatTile(index: index);
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: const Icon(Icons.edit),
      ),
    );
  }
}


