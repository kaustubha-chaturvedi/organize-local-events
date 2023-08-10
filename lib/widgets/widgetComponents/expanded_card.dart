import 'package:flutter/material.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/widgetComponents/collapsed_card.dart';

class ExpandedCard extends StatelessWidget {
  const ExpandedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: accent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const TopPart(),
          const MidPart(),
          Column(
            children: [
              Image.asset(
                'assets/images/map.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 10),
              const Text(
                'Description',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 10),
              const Text(
                """I'm a dog owner and I'm planning to organize a dog walking session in our society, and I'd love for you to   join me. It's a great way to bond with your furry friend and meet other pet owners in our community.\nWe will be meeting at the society's park, and will walk our dogs together for around an hour. This is a fantastic opportunity for your dog to socialize with other dogs, get some fresh air, and exercise.""",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 10),
            ],
          ),
          const EndPart(),
        ],
      ),
    );
  }
}
