import 'package:flutter/material.dart';
import '../style.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<Map<String, String>> _notifications = [
    {
      'title': 'New Match Added',
      'subtitle': 'Barcelona vs Real Madrid starts tomorrow!',
      'image': 'assets/images/BVR.avif'
    },
    {
      'title': 'Flash Sale!',
      'subtitle': 'Get 20% off on all football jerseys.',
      'image': 'assets/images/8.jpg'
    },
    {
      'title': 'Your Order Shipped',
      'subtitle': 'Your goalkeeper gloves are on the way.',
      'image': 'assets/images/Glove.png'
    },
    {
      'title': 'Welcome!',
      'subtitle': 'Thanks for joining our sports community.',
      'image': 'assets/images/10.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Notifications", style: AppTextStyles.heading),
            const SizedBox(height: AppSpacing.large),

            Expanded(
              child: ListView.separated(
                itemCount: _notifications.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final notification = _notifications[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Image.asset(
                        notification['image']!,
                        width: 50,
                        height: 50,
                      ),
                      title: Text(
                        notification['title']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(notification['subtitle']!),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // You can add navigation here
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
