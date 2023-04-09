// page class model user
class Karyawan {
  final DateTime createdAt;
  final String name;
  final String avatar;
  final String job;
  final String id;

  Karyawan({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.job,
    required this.id,
  });

  factory Karyawan.fromJson(Map<String, dynamic> json) => Karyawan(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        job: json["job"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "job": job,
        "id": id,
      };
}
