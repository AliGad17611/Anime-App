import 'package:anime_app/core/utils/spacing.dart';
import 'package:anime_app/features/subscriptions/presentation/views/widgets/subscription_background_widget.dart';
import 'package:anime_app/features/subscriptions/presentation/views/widgets/subscription_continue_button_widget.dart';
import 'package:anime_app/features/subscriptions/presentation/views/widgets/subscription_header_widget.dart';
import 'package:anime_app/features/subscriptions/presentation/views/widgets/subscription_hero_section_widget.dart';
import 'package:anime_app/features/subscriptions/presentation/views/widgets/subscription_plans_section_widget.dart';
import 'package:flutter/material.dart';

class SubscriptionView extends StatefulWidget {
  const SubscriptionView({super.key});

  @override
  State<SubscriptionView> createState() => _SubscriptionViewState();
}

class _SubscriptionViewState extends State<SubscriptionView> {
  int selectedPlanIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SubscriptionBackgroundWidget(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(37),
              const SubscriptionHeaderWidget(),
              verticalSpace(10),
              const SubscriptionHeroSectionWidget(),
              verticalSpace(24),
              Column(
                children: [
                  SubscriptionPlansSectionWidget(
                    selectedPlanIndex: selectedPlanIndex,
                    onPlanSelected: (index) {
                      setState(() {
                        selectedPlanIndex = index;
                      });
                    },
                  ),
                  verticalSpace(45),
                  SubscriptionContinueButtonWidget(
                    onPressed: () {
                      // Handle continue button press
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
