import 'package:anime_app/core/utils/spacing.dart';
import 'package:anime_app/features/subscriptions/presentation/views/widgets/subscription_card_widget.dart';
import 'package:flutter/material.dart';

class SubscriptionPlansSectionWidget extends StatelessWidget {
  final int selectedPlanIndex;
  final Function(int) onPlanSelected;

  const SubscriptionPlansSectionWidget({
    super.key,
    required this.selectedPlanIndex,
    required this.onPlanSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubscriptionCardWidget(
          type: 'Monthly',
          price: '\$5 USD',
          period: 'month',
          isSelected: selectedPlanIndex == 0,
          description: 'Include Family Sharing',
          onTap: () => onPlanSelected(0),
        ),
        verticalSpace(16),
        SubscriptionCardWidget(
          type: 'Yearly',
          price: '\$50 USD',
          period: 'year',
          isSelected: selectedPlanIndex == 1,
          description: 'Save 17% + Family Sharing',
          onTap: () => onPlanSelected(1),
        ),
      ],
    );
  }
}
