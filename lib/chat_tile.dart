import 'package:flutter/material.dart';
import 'package:telegram_ui/chat_detail_screen.dart';

class ChatTile extends StatelessWidget {
  final int index;

  const ChatTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/50dab922-5d48-4c6b-8725-7fd0755d9334/3a3f2d35-8167-4708-9ef0-bdaa980989f9.png'),
      ),
      title:
          const Text('Nishal', style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: const Text('Last message preview here...'),
      trailing: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('10:42 AM', style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(height: 5),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.blue,
            child:
                Text('2', style: TextStyle(color: Colors.white, fontSize: 10)),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const ChatDetailScreen(contactName: 'Nishal')),
        );
      },
    );
  }
}
