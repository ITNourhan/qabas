import 'package:flutter/material.dart';
import 'package:qabas/widgets/login_button.dart';
import 'package:qabas/utils/app_colors.dart';
import 'package:qabas/screens/login_page.dart';

class MainLoginPage extends StatelessWidget {
  const MainLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("Building MainLoginPage");
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFBF7),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                const SizedBox(height: 60),
                _buildLogo(),
                const SizedBox(height: 20),
                const Text(
                  'أهلاً بك في تطبيق قبس',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.green1),
                ),
                const SizedBox(height: 20),
                LoginButton(
                  text: 'تسجيل الدخول كإداري',
                  color: AppColors.orange1,
                  icon: Icons.person,
                  onPressed: () => _navigateToLogin(context, 'كإداري', AppColors.orange1, Icons.person),
                ),
                const SizedBox(height: 25),
                LoginButton(
                  text: 'تسجيل الدخول كمعلم',
                  color: AppColors.blue3,
                  icon: Icons.school,
                  onPressed: () => _navigateToLogin(context, 'كمعلم', AppColors.blue3, Icons.school),
                ),
                const SizedBox(height: 25),
                LoginButton(
                  text: 'تسجيل الدخول كولي أمر',
                  color: AppColors.blue1,
                  icon: Icons.people,
                  onPressed: () => _navigateToLogin(context, 'كولي أمر', AppColors.blue1, Icons.people),
                ),
                const SizedBox(height: 25),
                LoginButton(
                  text: 'تسجيل الدخول كطالب',
                  color: AppColors.orange3,
                  icon: Icons.person_outline,
                  onPressed: () => _navigateToLogin(context, 'كطالب', AppColors.orange3, Icons.person_outline),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToLogin(BuildContext context, String userType, Color color, IconData icon) {
    print("Navigating to login page for $userType");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LoginPage(
          userType: userType,
          buttonColor: color,
          icon: icon,
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Image.asset('lib/assets/logo.jpg', width: 80, height: 80),
      ),
    );
  }
}