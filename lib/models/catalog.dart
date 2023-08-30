import 'dart:convert';

class CatalogModel{
  static List<Item>items=[];
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Item {
  final int id;
  final String name;
  final num rating;
  final int distance;
  final String location;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.rating,
    required this.distance,
    required this.location,
    required this.image,
  });

  Item copyWith({
    int? id,
    String? name,
    num? rating,
    int? distance,
    String? location,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      rating: rating ?? this.rating,
      distance: distance ?? this.distance,
      location: location ?? this.location,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'rating': rating,
      'distance': distance,
      'location': location,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      rating: map['rating'] as num,
      distance: map['distance'] as int,
      location: map['location'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, rating: $rating, distance: $distance, location: $location, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.rating == rating &&
      other.distance == distance &&
      other.location == location &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      rating.hashCode ^
      distance.hashCode ^
      location.hashCode ^
      image.hashCode;
  }
}
