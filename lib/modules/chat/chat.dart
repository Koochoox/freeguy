import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Chat'),
        centerTitle: false,
      ),
      body: Column(
        children: const [
          Expanded(child: _ChatTimeline()),
          _ChatInput(),
        ],
      ),
    );
  }
}

class _ChatTimeline extends StatelessWidget {
  const _ChatTimeline();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        _MessageBubble(
          text: 'System online.',
          isSystem: true,
        ),
      ],
    );
  }
}

class _MessageBubble extends StatelessWidget {
  final String text;
  final bool isSystem;

  const _MessageBubble({
    required this.text,
    this.isSystem = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSystem ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSystem ? Colors.black12 : Colors.black,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSystem ? Colors.black : Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class _ChatInput extends StatelessWidget {
  const _ChatInput();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black12)),
      ),
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Message',
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 8),
          Icon(Icons.send, size: 20),
        ],
      ),
    );
  }
}
