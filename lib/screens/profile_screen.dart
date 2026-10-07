import 'package:flutter/material.dart';

import '../widgets/contact_tile.dart';

class ProfileScreen extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const ProfileScreen({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Картка розробника'),
        actions: [
          Row(
            children: [
              Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
              Switch(value: isDarkMode, onChanged: onThemeChanged),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              'Ім’я Розробника',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Flutter Developer',
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(color: Colors.grey),
            ),
            const Divider(height: 32, indent: 32, endIndent: 32),
            ContactTile(
              icon: Icons.email,
              title: 'Email',
              subtitle: 'developer@example.com',
              onTap: () {},
            ),
            ContactTile(
              icon: Icons.phone,
              title: 'Телефон',
              subtitle: '+380 99 123 4567',
              onTap: () {},
            ),
            ContactTile(
              icon: Icons.code,
              title: 'GitHub',
              subtitle: 'github.com/developer',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
