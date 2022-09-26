class Productivity{
  final String quarter;
  final String day;
  final String targeted_productivity;
  final String standard_minute_value;
  final String work_in_progress;
  final String overall_using_times;
  final String incentive_package_users;
  final String idle_time;
  final String idle_men;
  final String no_of_updated;

  Productivity(
      { required this.quarter,
        required this.day,
        required this.targeted_productivity,
        required this.standard_minute_value,
        required this.work_in_progress,
        required this.overall_using_times,
        required this.incentive_package_users,
        required this.idle_time,
        required this.idle_men,
        required this.no_of_updated,
      });

  factory Productivity.fromMap(Map productivityMap){
    return Productivity(
        quarter: productivityMap['quarter'],
        day: productivityMap['day'],
        targeted_productivity: productivityMap['targeted_productivity'],
        standard_minute_value: productivityMap['standard_minute_value'],
        work_in_progress: productivityMap['work_in_progress'],
        overall_using_times: productivityMap['overall_using_times'],
        incentive_package_users: productivityMap['incentive_package_users'],
        idle_time: productivityMap['idle_time'],
        idle_men: productivityMap['idle_men'],
        no_of_updated: productivityMap['no_of_updated']
    );
  }

}