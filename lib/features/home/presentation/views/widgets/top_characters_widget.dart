import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/theme/spacing.dart';
import 'package:anime_app/features/home/domain/entity/top_character_entity.dart';
import 'package:anime_app/features/home/presentation/views/widgets/character_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCharactersWidget extends StatelessWidget {
  final List<TopCharacterEntity> characters;
  final Function(TopCharacterEntity)? onCharacterSelected;

  const TopCharactersWidget({
    super.key,
    required this.characters,
    this.onCharacterSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text("Top Characters", style: AppTextStyles.font24W700Black),
        ),
        verticalSpace(24),
        SizedBox(
          height: 160.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CharacterItemWidget(
              character: characters[index],
              onTap: () => onCharacterSelected?.call(characters[index]),
            ),
            separatorBuilder: (context, index) => horizontalSpace(8),
            itemCount: characters.length,
          ),
        ),
      ],
    );
  }
}
