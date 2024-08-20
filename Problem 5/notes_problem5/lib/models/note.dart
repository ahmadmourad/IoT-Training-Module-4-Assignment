import 'dart:convert';

class Note {
  String title;
  String description;

  Note({
    required this.title,
    required this.description,
  });

  // Convert a Note object into a Map.
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
    };
  }

  // Convert a Map into a Note object.
  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      title: map['title'],
      description: map['description'],
    );
  }

  // Convert a Note object into a JSON string.
  String toJson() => json.encode(toMap());

  // Convert a JSON string into a Note object.
  factory Note.fromJson(String source) => Note.fromMap(json.decode(source));
}
