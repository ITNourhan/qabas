import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  const LoginButton({
    Key? key,
    required this.text,
    required this.color,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Button tapped: $text");
        onPressed();
      },
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 20),
            CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.3),
              child: Icon(icon, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 15),
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}