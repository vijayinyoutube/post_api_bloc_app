import 'dart:convert';

class HomePageModel {
  final String name;
  final String job;
  final String id;
  final String createdAt;

  HomePageModel(
    this.name,
    this.job,
    this.id,
    this.createdAt,
  );

  HomePageModel copyWith({
    String? name,
    String? job,
    String? id,
    String? createdAt,
  }) {
    return HomePageModel(
      name ?? this.name,
      job ?? this.job,
      id ?? this.id,
      createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'job': job,
      'id': id,
      'createdAt': createdAt,
    };
  }

  factory HomePageModel.fromMap(Map<String, dynamic> map) {
    return HomePageModel(
      map['name'] ?? '',
      map['job'] ?? '',
      map['id'] ?? '',
      map['createdAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory HomePageModel.fromJson(String source) =>
      HomePageModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'HomePageModel(name: $name, job: $job, id: $id, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomePageModel &&
        other.name == name &&
        other.job == job &&
        other.id == id &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return name.hashCode ^ job.hashCode ^ id.hashCode ^ createdAt.hashCode;
  }
}
