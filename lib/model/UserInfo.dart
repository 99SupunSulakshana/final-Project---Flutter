class UserInfo{
  final int id;
  final String name;
  final String nic;
  final String address;
  final String code;
  final String dob;
  final String email;
  final String mobileNumbers;
  final String simCard;
  bool active;
  final String created_time;

  UserInfo({
    required this.id,
    required this.name,
    required this.nic,
    required this.address,
    required this.code,
    required this.dob,
    required this.email,
    required this.mobileNumbers,
    required this.simCard,
    this.active = false,
    required this.created_time
  });

  factory UserInfo.fromMap(Map userInfoMap) {
    return UserInfo(
        id: userInfoMap['id'],
        name: userInfoMap['name'],
        nic: userInfoMap['nic'],
        address: userInfoMap['address'],
        code: userInfoMap['code'],
        dob: userInfoMap['dob'],
        email: userInfoMap['email'],
        mobileNumbers: userInfoMap['mobileNumbers'],
        simCard: userInfoMap['simCArd'],
        active: userInfoMap['active'],
        created_time: userInfoMap['created_time']
    );
  }
  void toggle(){
    active = !active;
  }
}