import 'package:flutter/material.dart';
import 'package:praful_portfolio/res/constant.dart';
import 'package:praful_portfolio/view%20model/responsive.dart';
import 'package:praful_portfolio/view/main/components/drawer/knowledges.dart';
import 'package:praful_portfolio/view/main/components/drawer/my_skill.dart';
import 'package:praful_portfolio/view/projects/components/title_text.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'About', title: 'us'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isExtraLargeScreen(context)
                    ? size.width * 0.12
                    : 30,
                vertical: 20),
            child: const Responsive(
                desktop: Summery(),
                extraLargeScreen: Summery(),
                largeMobile: Summery(),
                mobile: Summery(),
                tablet: Summery()),
          ))
        ],
      ),
    );
  }
}

class Summery extends StatelessWidget {
  const Summery({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Summery",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "I'm an experienced software developer with over two years of experience, specializing in working within fast-paced startup environments. With a solid foundation in computer science and a track record of success in dynamic settings, I bring a unique blend of technical expertise, adaptability, and a knack for quickly grasping and learning new concepts to every project I undertake.",
            style: TextStyle(color: Colors.grey, height: 1.5),
          ),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Education",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Masters of Computer Application, 2022\nBelgaum, Karnataka',
            style: TextStyle(color: Colors.grey, height: 1.5),
          ),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Experience",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(color: Colors.white, height: 1.5, fontSize: 18),
          ),
          const Text(
            'Mplussoft technology (April 2023 - October 2024)',
            style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 12),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Developed Cross-Platform Apps: Collaborated with teams to build efficient mobile applications using Flutter,ensuring a consistent user experience across iOS and Android.Integrated APIs: Utilized RESTful APIs and various libraries to fetch and display dynamic content withinFlutter apps.Implemented Navigation Solutions: Used Flutter’s Navigator and routing techniques to provide smooth navigation and enhance user experience Managed State Efficiently: Leveraged state management solutions like Provider and Bloc to maintain seamless data flow and handle complex features Optimized Performance: Enhanced app functionality and performance by utilizing Flutter’s rich widget library and ensuring responsive, high-performance designs Integrated Third-Party Services: Implemented third-party API integrations to extend app functionality and provide additional features, such as payment gateways etc.',
            style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 14),
          ),
          const SizedBox(
            height: 20,
          ),
            const Text(
            'Flutter Developer',
            style: TextStyle(color: Colors.white, height: 1.5, fontSize: 18),
          ),
          const Text(
            'Dacway IT Solutions (July 2022 – March 2023)',
            style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 12),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Developed Cross-Platform Apps: Collaborated with teams to build efficient mobile applications using Flutter,ensuring a consistent user experience across iOS and Android.Integrated APIs: Utilized RESTful APIs and various libraries to fetch and display dynamic content withinFlutter apps.Implemented Navigation Solutions: Used Flutter’s Navigator and routing techniques to provide smooth navigation and enhance user experience Managed State Efficiently: Leveraged state management solutions like Provider and Bloc to maintain seamless data flow and handle complex features Optimized Performance: Enhanced app functionality and performance by utilizing Flutter’s rich widget library and ensuring responsive, high-performance designs Integrated Third-Party Services: Implemented third-party API integrations to extend app functionality and provide additional features, such as payment gateways etc.',
            style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 14),
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Skills",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const MySKills(),
          const Knowledges(),
        ],
      ),
    );
  }
}
