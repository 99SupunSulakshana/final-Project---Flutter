// ignore_for_file: file_names

class AboutUs {
  final int id;
  final String provider;
  final String description;
  final String description2;
  final DateTime created_time;

  AboutUs(
      {required this.id,
      required this.provider,
      required this.description,
      required this.description2,
        required this.created_time
      });

  factory AboutUs.fromMap(Map aboutUsMap) {
    return AboutUs(
        id: aboutUsMap['id'],
        provider: aboutUsMap['provider'],
        description: aboutUsMap['description'],
        description2: aboutUsMap['description2'],
        created_time: DateTime.parse(aboutUsMap['created_time'])
    );
  }
}
