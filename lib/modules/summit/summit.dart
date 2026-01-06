import 'package:flutter/material.dart';

class Summit extends StatelessWidget {
  const Summit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Summit'),
        centerTitle: false,
      ),
      body: Column(
        children: const [
          _SummitStatus(),
          Expanded(child: _SummitList()),
        ],
      ),
    );
  }
}

class _SummitStatus extends StatelessWidget {
  const _SummitStatus();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Meetings',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Idle',
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

class _SummitList extends StatelessWidget {
  const _SummitList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: const [
        _MeetingRow('No active summits'),
      ],
    );
  }
}

class _MeetingRow extends StatelessWidget {
  final String label;

  const _MeetingRow(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.black54,
        ),
      ),
    );
  }
}
