import 'package:flutter/material.dart';
import 'package:telegram_ui/message_bubble.dart';
import 'package:telegram_ui/message_input_field.dart';

class ChatDetailScreen extends StatelessWidget {
  final String contactName;

  const ChatDetailScreen({super.key, required this.contactName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/50dab922-5d48-4c6b-8725-7fd0755d9334/3a3f2d35-8167-4708-9ef0-bdaa980989f9.png'),
            ),
            const SizedBox(width: 10),
            Text(contactName,
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.call), onPressed: () {}),
          IconButton(icon: const Icon(Icons.video_call), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return MessageBubble(
                  isMe: index % 2 == 0,
                  message: 'Hi',
                );
              },
            ),
          ),
          const MessageInputField(),
        ],
      ),
    );
  }
}
