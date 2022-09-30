class Terms{
  final int id;
  final String term_name;
  final String description;
  final String created_time;

  Terms({
    required this.id,
    required this.term_name,
    required this.description,
    required this.created_time
  });

  factory Terms.fromMap(Map termsMap)
  {
    return Terms(
      id: termsMap['id'],
      term_name: termsMap['term_name'],
      description: termsMap['description'],
      created_time: termsMap['created_time']
    );
  }
}