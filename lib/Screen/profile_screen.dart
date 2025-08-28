import 'package:flutter/material.dart';
import 'package:midterm/auth.dart';
import 'package:midterm/components/popup.dart';
import '../style.dart';
import '../login_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use guest info if not logged in
    final String userEmail = currentUser?["email"] ?? "guest@example.com";
    final String userPhone = currentUser?["phone"] ?? "No phone";

    // Extract username from email (before '@')
    final String userName = userEmail.split('@').first;

    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      appBar: AppBar(
        title: Text("Profile", style: AppStyles.headingStyle),
        centerTitle: true,
        backgroundColor: AppStyles.backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.primary),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/7.jpg"),
                    ),
                    const SizedBox(height: AppSpacing.medium),
                    Text(userName, style: AppStyles.titleStyle),
                    const SizedBox(height: AppSpacing.xSmall),
                    Text(userPhone, style: AppStyles.subHeadingStyle),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.large),

              // Profile Options
              Expanded(
                child: ListView(
                  children: [
                    _buildProfileOption(
                      context,
                      icon: Icons.edit,
                      iconColor: AppColors.primary,
                      title: "Edit Profile",
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Edit Profile coming soon...")),
                        );
                      },
                    ),
                    _buildProfileOption(
                      context,
                      icon: Icons.settings,
                      iconColor: Colors.teal,
                      title: "Settings",
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Settings coming soon...")),
                        );
                      },
                    ),
                    _buildProfileOption(
                      context,
                      icon: Icons.logout,
                      iconColor: Colors.red,
                      title: "Logout",
                      onTap: () {
                        Popup.showConfirm(
                          context,
                          "Logout",
                          "Are you sure you want to logout?",
                          onConfirm: () {
                            currentUser = null;
                            Navigator.of(context).pushReplacement(
  MaterialPageRoute(builder: (_) => const LoginScreen()),
);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileOption(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: AppSpacing.small),
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title, style: AppStyles.optionTextStyle),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
