import 'package:anime_app/core/theme/spacing.dart';
import 'package:anime_app/features/home/domain/entity/anime_entity.dart';
import 'package:anime_app/features/home/presentation/views/widgets/anime_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimeListWidget extends StatelessWidget {
  final List<AnimeEntity> animeList;
  final Function(AnimeEntity)? onAnimeSelected;

  const AnimeListWidget({
    super.key,
    required this.animeList,
    this.onAnimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => AnimeCardWidget(
          anime: animeList[index],
          onTap: () => onAnimeSelected?.call(animeList[index]),
        ),
        separatorBuilder: (BuildContext context, int index) =>
            horizontalSpace(14),
        itemCount: animeList.length,
      ),
    );
  }
}
