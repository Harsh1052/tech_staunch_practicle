class User {
  bool? success;
  String? time;
  String? message;
  int? totalUsers;
  int? offset;
  int? limit;
  List<Users>? users;

  User(
      {this.success,
        this.time,
        this.message,
        this.totalUsers,
        this.offset,
        this.limit,
        this.users});

  User.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    time = json['time'];
    message = json['message'];
    totalUsers = json['total_users'];
    offset = json['offset'];
    limit = json['limit'];
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(Users.fromJson(v));
      });
    }
  }

}

class Users {
  String? gender;
  int? id;
  String? dateOfBirth;
  String? job;
  String? city;
  String? zipcode;
  double? latitude;
  String? profilePicture;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? street;
  String? state;
  String? country;
  double? longitude;

  Users(
      {this.gender,
        this.id,
        this.dateOfBirth,
        this.job,
        this.city,
        this.zipcode,
        this.latitude,
        this.profilePicture,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.street,
        this.state,
        this.country,
        this.longitude});

  Users.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    id = json['id'];
    dateOfBirth = json['date_of_birth'];
    job = json['job'];
    city = json['city'];
    zipcode = json['zipcode'];
    latitude = json['latitude'];
    profilePicture = json['profile_picture'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    street = json['street'];
    state = json['state'];
    country = json['country'];
    longitude = json['longitude'];
  }

}
