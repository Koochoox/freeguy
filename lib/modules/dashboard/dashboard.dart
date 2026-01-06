import 'package:flutter/material.dart';
import '../../core/liveness/liveness_engine.dart';
///
/// Dashboard
/// Freeguy LIFE_OS Control Plane
///
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _StatusHeader(),
            Expanded(
              child: _LifeGrid(),
            ),
          ],
        ),
      ),
    );
  }
}

///
/// Top System Status Header
///
class _StatusHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Freeguy',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
          _SystemPulse(),
        ],
      ),
    );
  }
}

///
/// Quiet system pulse (placeholder)
///
class _SystemPulse extends StatefulWidget {
  const _SystemPulse();

  @override
  State<_SystemPulse> createState() => _SystemPulseState();
}

class _SystemPulseState extends State<_SystemPulse> {
  @override
  void initState() {
    super.initState();
    LivenessEngine.start();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: LivenessEngine.pulse,
      builder: (context, scale, _) {
        return Transform.scale(
          scale: scale,
          child: Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }
}

///
/// Life OS Module Grid
///
class _LifeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: const [
        _ModuleTile('Chat'),
        _ModuleTile('Freepay'),
        _ModuleTile('Moment'),
        _ModuleTile('Summit'),
        _ModuleTile('Flash'),
        _ModuleTile('Profile'),
        _ModuleTile('Settings'),
      ],
    );
  }
}

///
/// Individual Module Entry
///
class _ModuleTile extends StatelessWidget {
  final String label;

  const _ModuleTile(this.label);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
  if (label == 'Chat') {
    Navigator.pushNamed(context, '/chat');
  }
  if (label == 'Freepay') {
    Navigator.pushNamed(context, '/freepay');
  }
  if (label == 'Moment') {
    Navigator.pushNamed(context, '/moment');
  }
  if (label == 'Summit') {
    Navigator.pushNamed(context, '/summit');
  }
},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
