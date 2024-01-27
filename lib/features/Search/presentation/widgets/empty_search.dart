import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NoSearchItem extends StatelessWidget {
  const NoSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(300),
            Text(
              "Please Search for you desired book",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary
              ),
            ),
          ],
        ),
      ),
    );
  }
}
