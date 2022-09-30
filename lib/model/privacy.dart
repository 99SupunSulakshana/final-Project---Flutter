class Privacy {
  final int id;
  final String privacy_name;
  final String description;
  final String created_time;

  Privacy({
    required this.id,
    required this.privacy_name,
    required this.description,
    required this.created_time,
  });

  factory Privacy.fromMap(Map privacyMap)
  {
    return Privacy(
        id: privacyMap['id'],
        privacy_name: privacyMap['privacy_name'],
        description: privacyMap['description'],
        created_time: privacyMap['created_time']
    );
  }
}