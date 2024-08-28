class Fiesta {
  final int id;
  final String name;
  final String image;
  final String description;

  const Fiesta({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });

  factory Fiesta.fromJson(Map<String, dynamic> json) => Fiesta(
        id: json['id'],
        name: json['name'],
        image: json['img'],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': name,
        'image': image,
        'description': description,
      };
  Fiesta copy() => Fiesta(
        id: id,
        name: name,
        image: image,
        description: description,
      );
}
