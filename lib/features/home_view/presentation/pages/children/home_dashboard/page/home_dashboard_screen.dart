import 'package:flutter/material.dart';

import 'widgets/balance_card.dart';

class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Page();
  }
}

class _Page extends StatelessWidget {
  const _Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _Body();
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BalanceCard(),
        SizedBox(
          height: 24.0,
        ),
        Placeholder()
      ],
    );
  }
}
