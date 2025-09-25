import 'package:equatable/equatable.dart';

class AnimeEntity extends Equatable {
  final String? id;
  final String animeName;
  final String animeImage;
  final String animeType;
  final double animeRating;
  final String? synopsis;
  final int? episodes;
  final String? status;
  final List<String>? genres;

  const AnimeEntity({
    this.id,
    required this.animeName,
    required this.animeImage,
    required this.animeType,
    required this.animeRating,
    this.synopsis,
    this.episodes,
    this.status,
    this.genres,
  });

  @override
  List<Object?> get props => [
    id,
    animeName,
    animeImage,
    animeType,
    animeRating,
    synopsis,
    episodes,
    status,
    genres,
  ];
}
