
class Advertisement{
  final int id;
  final String name;
  final String description;
  final String created_time;

  Advertisement({
   required this.id,
   required this.name,
   required this.description,
    required this.created_time
  });

  factory Advertisement.fromMap(Map advertisementMap)
  {
    return Advertisement(
        id: advertisementMap['id'],
        name: advertisementMap['name'],
        description: advertisementMap['description'],
        created_time: advertisementMap['created_time']
    );
  }
}