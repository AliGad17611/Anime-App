import 'package:anime_app/core/routes/routes.dart';
import 'package:anime_app/features/details/presentation/views/details_view.dart';
import 'package:anime_app/features/home/presentation/views/home_view.dart';
import 'package:anime_app/main_wrapper_view.dart';
import 'package:anime_app/features/subscriptions/presentation/views/subscription_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainWrapper:
        return MaterialPageRoute(builder: (_) => const MainWrapperView());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.details:
        return MaterialPageRoute(builder: (_) => const DetailsView());
      case Routes.subscription:
        return MaterialPageRoute(builder: (_) => const SubscriptionView());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Page not found'))),
        );
    }
  }
}
