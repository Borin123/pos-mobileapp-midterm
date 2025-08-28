import 'package:flutter/material.dart';
import '../style.dart';
import '../components/news_card.dart';
import '../components/app_button.dart';
import '../components/quick_action.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final news = [
      {
        'title': 'Lionel Messi Wins World Cup',
        'subtitle': 'Don’t miss the clash at 7:30 PM',
        'image': 'assets/images/new1.jpg',
      },
      {
        'title': '5 Ballon d\'Or Awards for Messi',
        'subtitle': 'Star striker linked with a surprise move',
        'image': 'assets/images/new2.jpeg',
      },
      {
        'title': 'Lionel Messi GOAT: 8 Ballon d\'Ors',
        'subtitle': 'Star striker linked with a surprise move',
        'image': 'assets/images/new3.jpg',
      },
    ];

    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back, Borin 👋",
                style: AppStyles.headingStyle,
              ),
              const SizedBox(height: AppSpacing.medium),

              // Quick actions row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: QuickAction(
                      icon: Icons.tv_rounded,
                      label: "Live Scores",
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: AppSpacing.small),
                  Expanded(
                    child: QuickAction(
                      icon: Icons.shopping_bag_outlined,
                      label: "Shop",
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: AppSpacing.small),
                  Expanded(
                    child: QuickAction(
                      icon: Icons.airplane_ticket_outlined,
                      label: "Tickets",
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: AppSpacing.large),

              AppButton(
                label: "Check Scores",
                icon: Icons.sports_soccer,
                onPressed: () {},
              ),

              const SizedBox(height: AppSpacing.large),

              Text(
                "Latest News",
                style: AppStyles.subHeadingStyle,
              ),
              const SizedBox(height: AppSpacing.small),

              Expanded(
                child: ListView(
                  children: news.map((n) {
                    return NewsCard(
                      title: n['title']!,
                      subtitle: n['subtitle']!,
                      imagePath: n['image']!,
                      onTap: () {},
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
