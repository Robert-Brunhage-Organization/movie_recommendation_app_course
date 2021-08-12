import 'package:flutter/foundation.dart';

@immutable
class Genre {
  final String name;
  final bool isSelected;
  final int id;

  const Genre({required this.name, this.id = 0, this.isSelected = false});

  Genre toggleSelected() {
    return Genre(
      name: name,
      id: id,
      isSelected: !isSelected,
    );
  }

  @override
  String toString() => 'Genre(name: $name, isSelected: $isSelected, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Genre && other.name == name && other.isSelected == isSelected && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ isSelected.hashCode ^ id.hashCode;
}
