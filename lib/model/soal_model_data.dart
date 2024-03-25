class ModelSoal {
  String soal;
  String jawaban;
  String linkGambar;
  List<String> pilihan;

  ModelSoal({
    required this.soal,
    required this.jawaban,
    required this.pilihan,
    required this.linkGambar,
  });

  ModelSoal.fromJson(Map<String, Object?> json)
      : this(
          soal: json['soal']! as String,
          jawaban: json['jawaban']! as String,
          pilihan: json['pilihan']! as List<String>,
          linkGambar: json['link_gambar']! as String,
        );

  ModelSoal copyWith({
    String? soal,
    String? jawaban,
    String? linkGambar,
    List<String>? pilihan,
  }) {
    return ModelSoal(
      soal: soal ?? this.soal,
      jawaban: jawaban ?? this.jawaban,
      pilihan: pilihan ?? this.pilihan,
      linkGambar: linkGambar ?? this.linkGambar,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'soal': soal,
      'jawaban': jawaban,
      'pilihan': pilihan,
      'link_gambar': linkGambar,
    };
  }
}
