class Cast {
  final String profileImage;
  final String userName;
  final String castedFrom;
  final String castImage;
  final int casterAt; // minutes ago, or timestamp
  final String castText;
  final CastInfo castInfo;
  final String? recastedBy; // optional field if recast

  Cast({
    required this.profileImage,
    required this.userName,
    required this.castedFrom,
    required this.castImage,
    required this.casterAt,
    required this.castText,
    required this.castInfo,
    this.recastedBy,
  });

  // Factory to create from Map
  factory Cast.fromMap(Map<String, dynamic> map) {
    return Cast(
      profileImage: map['profile_image'],
      userName: map['user_name'],
      castedFrom: map['casted_from'],
      castImage: map['cast_image'],
      casterAt: map['caster_at'],
      castText: map['cast_text'],
      castInfo: CastInfo.fromMap(map['cast_info']),
      recastedBy: map['recasted_by'],
    );
  }

  // Convert back to Map (useful for dummy data)
  Map<String, dynamic> toMap() {
    return {
      'profile_image': profileImage,
      'user_name': userName,
      'casted_from': castedFrom,
      'cast_image': castImage,
      'caster_at': casterAt,
      'cast_text': castText,
      'cast_info': castInfo.toMap(),
      'recasted_by': recastedBy,
    };
  }
}

class CastInfo {
  final int comments;
  final int recasts;
  final int likes;

  CastInfo({
    required this.comments,
    required this.recasts,
    required this.likes,
  });

  factory CastInfo.fromMap(Map<String, dynamic> map) {
    return CastInfo(
      comments: map['comments'],
      recasts: map['recasts'],
      likes: map['likes'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'comments': comments,
      'recasts': recasts,
      'likes': likes,
    };
  }
}
