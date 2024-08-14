import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final double size;
  final IconData icon;

  const ProfileIcon({
    super.key,
    required this.onPressed,
    this.size = 40.0,
    this.icon = Icons.person,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: CircleAvatar(
        radius: size / 2,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          icon,
          size: size * 0.6,
          color: Colors.white,
        ),
      ),
    );
  }
}
