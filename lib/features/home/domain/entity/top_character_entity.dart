import 'package:anime_app/core/theme/app_assets.dart';
import 'package:equatable/equatable.dart';

class TopCharacterEntity extends Equatable {
  final String? id;
  final String characterName;
  final String characterImage;
  final String animeName;

  const TopCharacterEntity({
    this.id,
    required this.characterName,
    required this.characterImage,
    required this.animeName,
  });

  @override
  List<Object?> get props => [id, characterName, characterImage, animeName];
}

List<TopCharacterEntity> topCharacters = [
  TopCharacterEntity(
    characterName: "Gon Freecss",
    characterImage: AppAssets.gonFreecss,
    animeName: "Hunter x Hunter",
  ),
  TopCharacterEntity(
    characterName: "Naruto Uzumaki",
    characterImage: AppAssets.narutoUzumaki,
    animeName: "Naruto",
  ),
  TopCharacterEntity(
    characterName: "Luffy",
    characterImage: AppAssets.luffy,
    animeName: "One Piece",
  ),
  TopCharacterEntity(
    characterName: "Gon Freecss",
    characterImage: AppAssets.gonFreecss,
    animeName: "Hunter x Hunter",
  ),
];
