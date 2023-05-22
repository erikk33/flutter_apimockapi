class anime_waifu {
  final String nama_waifu;
  final String skill;

  const anime_waifu({
    required this.nama_waifu,
    required this.skill,

  });

  factory anime_waifu.fromJson(Map<String, dynamic> json) {
    return anime_waifu(
      nama_waifu: json['nama_waifu'],
      skill: json['skill'],

    );
  }
}
