import 'package:flutter/material.dart';

class Freepay extends StatelessWidget {
  const Freepay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Freepay'),
        centerTitle: false,
      ),
      body: Column(
        children: const [
          _BalanceHeader(),
          Expanded(child: _PaymentLog()),
          _QuickPayBar(),
        ],
      ),
    );
  }
}

class _BalanceHeader extends StatelessWidget {
  const _BalanceHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Available',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          Text(
            '₹0.00',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _PaymentLog extends StatelessWidget {
  const _PaymentLog();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: const [
        _LogRow('System ready'),
      ],
    );
  }
}

class _LogRow extends StatelessWidget {
  final String label;

  const _LogRow(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
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

class _QuickPayBar extends StatelessWidget {
  const _QuickPayBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black12)),
      ),
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: '₹ Amount',
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(width: 8),
          Text(
            'Sync',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
