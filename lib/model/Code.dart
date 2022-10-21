class Code {
  final int id;
  final String code_title;
  final String description;
  final String code;
  final String created_time;

  Code({
   required this.id,
   required this.code_title,
   required this.description,
   required this.code,
   required this.created_time
  });

  factory Code.fromMap(Map codeMap)
  {
    return Code(
      id: codeMap['id'],
      code_title: codeMap['code_title'],
      description: codeMap['description'],
      code: codeMap['code'],
      created_time: codeMap['created_time']
    );
  }
}