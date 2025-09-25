import 'package:anime_app/features/home/domain/entity/anime_entity.dart';

class AnimeModel extends AnimeEntity {
  const AnimeModel({
    required super.animeName,
    required super.animeImage,
    required super.animeType,
    required super.animeRating,
    super.id,
    super.synopsis,
    super.episodes,
    super.status,
    super.genres,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) {
    return AnimeModel(
      id: json['mal_id']?.toString(),
      animeName: json['title'] ?? '',
      animeImage: json['images']?['jpg']?['image_url'] ?? '',
      animeType: json['type'] ?? '',
      animeRating: (json['score'] ?? 0.0).toDouble(),
      synopsis: json['synopsis'],
      episodes: json['episodes'],
      status: json['status'],
      genres: (json['genres'] as List<dynamic>?)
          ?.map((genre) => genre['name'] as String)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mal_id': id,
      'title': animeName,
      'images': {
        'jpg': {'image_url': animeImage},
      },
      'type': animeType,
      'score': animeRating,
      'synopsis': synopsis,
      'episodes': episodes,
      'status': status,
      'genres': genres?.map((genre) => {'name': genre}).toList(),
    };
  }

  AnimeEntity toEntity() {
    return AnimeEntity(
      id: id,
      animeName: animeName,
      animeImage: animeImage,
      animeType: animeType,
      animeRating: animeRating,
      synopsis: synopsis,
      episodes: episodes,
      status: status,
      genres: genres,
    );
  }
}
