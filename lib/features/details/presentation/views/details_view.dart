import 'package:anime_app/core/routes/routes.dart';
import 'package:anime_app/core/theme/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:anime_app/features/details/presentation/widgets/hero_image_widget.dart';
import 'package:anime_app/features/details/presentation/widgets/content_section_widget.dart';
import 'package:anime_app/features/details/presentation/widgets/title_overlay_widget.dart';
import 'package:anime_app/features/details/presentation/widgets/bottom_action_buttons.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeroImageWidget(imagePath: AppAssets.demonSlayer),
                    ContentSectionWidget(
                      genres: ['Dark Fantasy', 'Action', 'Adventure'],
                      description:
                          'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                      viewsCount: '2.3M',
                      clapCount: '2K',
                      seasonsCount: '4',
                    ),
                  ],
                ),
                TitleOverlayWidget(title1: "DEMON", title2: "SLAYER"),
              ],
            ),
          ),
          BottomActionButtons(
            onPreviewTap: () {
              // Handle preview tap
            },
            onWatchNowTap: () {
              Navigator.pushNamed(context, Routes.subscription);
            },
          ),
        ],
      ),
    );
  }
}
