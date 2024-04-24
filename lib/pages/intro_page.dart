import 'package:ecommerce_app/components/my_button.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.shopping_bag,
                size: 72, color: Theme.of(context).colorScheme.inversePrimary),
            const Gap(25),

            //title
            const Text(
              "Minimal Shop",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Gap(10),
            //subtitle
            Text(
              "Premium quality product",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const Gap(25),
            //button
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
