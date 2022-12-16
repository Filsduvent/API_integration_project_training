import 'package:flutter/material.dart';
import '../widgets/feeds_widget.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
        // leading: AppBarIcons(function: () {}, icon: IconlyLight.arrowLeft),
      ),
      body: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 0.0,
              childAspectRatio: 0.7),
          itemBuilder: (ctx, index) {
            return const FeedsWidget();
          }),
    );
  }
}
