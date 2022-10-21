class WeeklyPackages{
  final int id;
  final String package_title;
  final String description;
  final String cost;
  final String created_time;

  WeeklyPackages(
  {
  required this.id,
  required this.package_title,
  required this.description,
  required this.cost,
  required this.created_time
  });

  factory WeeklyPackages.fromMap(Map weeklyPackageMap)
  {
    return WeeklyPackages(
        id: weeklyPackageMap['id'],
        package_title: weeklyPackageMap['package_title'],
        description: weeklyPackageMap['description'],
        cost: weeklyPackageMap['cost'],
        created_time: weeklyPackageMap['created_time']
    );
  }
}