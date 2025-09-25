import 'package:anime_app/core/theme/app_assets.dart';

class TopCharacterEntity {
  final String topCharacterName;
  final String topCharacterImage;
  final String animeName;

  TopCharacterEntity({
    required this.topCharacterName,
    required this.topCharacterImage,
    required this.animeName,
  });
}

List<TopCharacterEntity> topCharacters = [
  TopCharacterEntity(
    topCharacterName: "Gon Freecss",
    topCharacterImage: AppAssets.gonFreecss,
    animeName: "Hunter x Hunter",
  ),
  TopCharacterEntity(
    topCharacterName: "Naruto Uzumaki",
    topCharacterImage: AppAssets.narutoUzumaki,
    animeName: "Naruto",
  ),
  TopCharacterEntity(
    topCharacterName: "Luffy",
    topCharacterImage: AppAssets.luffy,
    animeName: "One Piece",
  ),
  TopCharacterEntity(
    topCharacterName: "Gon Freecss",
    topCharacterImage: AppAssets.gonFreecss,
    animeName: "Hunter x Hunter",
  ),
];
