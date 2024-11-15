import 'package:flutter/material.dart';
import 'package:praful_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialMediaIcon(
              icon: 'assets/icons/linkedin.svg',
              onTap: () => launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/praful-koneri-96263725b?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app'))),
          const SizedBox(
            width: 20,
          ),
          SocialMediaIcon(
            icon: 'assets/icons/github.svg',
            onTap: () =>
                launchUrl(Uri.parse('https://github.com/Prafulkoneri')),
          ),
          // const SizedBox(
          //   width: 20,
          // ),
          // SocialMediaIcon(
          //   icon: 'assets/icons/facebook.svg',
          //   onTap: () => launchUrl(Uri.parse(
          //       'https://www.facebook.com/profile.php?id=100076053197059&mibextid=JRoKGi')),
          // ),
          // const SizedBox(
          //   width: 20,
          // ),
          // SocialMediaIcon(
          //   icon: 'assets/icons/twitter.svg',
          //   onTap: () => launchUrl(Uri.parse(
          //       'https://x.com/Rohit_03_0?t=RuZSQxQak4SL2oB5ycqVHQ&s=09')),
          // ),
          const SizedBox(
            width: 20,
          ),
          SocialMediaIcon(
            icon: 'assets/icons/instagram.svg',
            onTap: () => launchUrl(Uri.parse(
                'https://www.instagram.com/praful____k_96k?igsh=MXR5M2xrcTZyMWk4eg==')),
          ),
        ],
      ),
    );
  }
}
