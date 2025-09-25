import 'package:anime_app/features/home/domain/entity/top_character_entity.dart';

class CharacterModel extends TopCharacterEntity {
  const CharacterModel({
    required super.characterName,
    required super.characterImage,
    required super.animeName,
    super.id,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['mal_id']?.toString(),
      characterName: json['name'] ?? '',
      characterImage: json['images']?['jpg']?['image_url'] ?? '',
      animeName: json['anime']?[0]?['anime']?['title'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mal_id': id,
      'name': characterName,
      'images': {
        'jpg': {'image_url': characterImage},
      },
      'anime': [
        {
          'anime': {'title': animeName},
        },
      ],
    };
  }

  TopCharacterEntity toEntity() {
    return TopCharacterEntity(
      id: id,
      characterName: characterName,
      characterImage: characterImage,
      animeName: animeName,
    );
  }
}
