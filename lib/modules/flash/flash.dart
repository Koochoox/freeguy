import 'package:flutter/material.dart';

class Flash extends StatelessWidget {
  const Flash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Flash'),
        centerTitle: false,
      ),
      body: Column(
        children: const [
          _FlashStatus(),
          Expanded(child: _FlashFeed()),
        ],
      ),
    );
  }
}

class _FlashStatus extends StatelessWidget {
  const _FlashStatus();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'City Signals',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Synced',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

class _FlashFeed extends StatelessWidget {
  const _FlashFeed();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: const [
        _FlashItem('Traffic update available'),
        _FlashItem('Weather alert synced'),
        _FlashItem('City notice received'),
      ],
    );
  }
}

class _FlashItem extends StatelessWidget {
  final String label;

  const _FlashItem(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
