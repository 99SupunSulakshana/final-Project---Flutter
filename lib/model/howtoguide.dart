class HowToGuide{
  final int id;
  final String title;
  final String description;

  HowToGuide({
   required this.id,
   required this.title,
    required this.description
  });

  factory HowToGuide.fromMap(Map guideMap){
    return HowToGuide(
        id: guideMap['id'],
        title: guideMap['title'],
        description: guideMap['description']);
  }
}