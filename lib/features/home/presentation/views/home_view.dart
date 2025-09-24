import 'package:anime_app/core/theme/app_assets.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/theme/spacing.dart';
import 'package:anime_app/features/home/domain/entity/anime_entity.dart';
import 'package:anime_app/features/home/domain/entity/top_character_entity.dart';
import 'package:anime_app/features/home/presentation/views/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> filterOptions = [
      'All',
      'Popular',
      'Trending',
      'New Releases',
      'Top Rated',
    ];
    final List<AnimeEntity> anime = [
      AnimeEntity(
        animeName: "Detective Conan",
        animeImage: AppAssets.detectiveConan,
        animeType: "Mystery",
        animeRating: 5.0,
      ),
      AnimeEntity(
        animeName: "Hunter x Hunter",
        animeImage: AppAssets.hunterXHunter,
        animeType: "Adventure",
        animeRating: 5.0,
      ),
      AnimeEntity(
        animeName: "Demon Slayer",
        animeImage: AppAssets.demonSlayer,
        animeType: "Action",
        animeRating: 5.0,
      ),
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      body: HomeBackgroundWidget(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(23),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Where Anime Comes Alive',
                  style: AppTextStyles.font22W700PrimaryText,
                ),
              ),
              verticalSpace(24),
              FilterChipsWidget(
                filterOptions: filterOptions,
                selectedIndex: 0,
                onFilterSelected: (index) {
                  // Handle filter selection
                },
              ),
              verticalSpace(20),
              AnimeListWidget(
                animeList: anime,
                onAnimeSelected: (anime) {
                  // Handle anime selection
                },
              ),
              verticalSpace(24),
              TopCharactersWidget(
                characters: topCharacters,
                onCharacterSelected: (character) {
                  // Handle character selection
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
