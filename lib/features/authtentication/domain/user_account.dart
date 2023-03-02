import 'dart:convert';

class UserAccount{
  final String fullName;
  final String email;
  final String password;
  final String job;
  final String age;
  String? imageProfile;

  UserAccount({
   required this.fullName,
   required this.email,
   required this.password,
   required this.job,
   required this.age,
   this.imageProfile,
});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAccount &&
          runtimeType == other.runtimeType &&
          fullName == other.fullName &&
          email == other.email &&
          password == other.password &&
          job == other.job &&
          age == other.age &&
          imageProfile == other.imageProfile;

  @override
  int get hashCode =>
      fullName.hashCode ^
      email.hashCode ^
      password.hashCode ^
      job.hashCode ^
      age.hashCode ^
      imageProfile.hashCode;

  @override
  String toString() {
    return 'UserAccount{fullName: $fullName, email: $email, password: $password, job: $job, age: $age, imageProfile: $imageProfile}';
  }

  /// GSON Serialize
  Map<String, dynamic> toMap(){
    return <String, dynamic>{
      'fullName' : fullName,
      'email' : email,
      'password' : password,
      'job' : job,
      'age' : age,
      'imageProfile': imageProfile
    };
  }

  factory UserAccount.fromMap(Map<String, dynamic> map){
    return UserAccount(
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      job: map['job'] as String,
      age: map['age'] as String,
      imageProfile: map['imageProfile'] as String
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAccount.fromJson(String source) => UserAccount.fromMap(json.decode(source));


}