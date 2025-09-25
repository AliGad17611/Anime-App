import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/utils/spacing.dart';
import 'package:anime_app/features/home/domain/entity/top_character_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterItemWidget extends StatelessWidget {
  final TopCharacterEntity character;
  final VoidCallback? onTap;

  const CharacterItemWidget({super.key, required this.character, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 48.r,
            backgroundImage: AssetImage(character.characterImage),
          ),
          verticalSpace(8),
          Text(
            character.characterName,
            style: AppTextStyles.font16W600PrimaryText,
          ),
          Text(character.animeName, style: AppTextStyles.font14W600Gray),
        ],
      ),
    );
  }
}
