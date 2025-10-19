class UserProfile {
  final String id;
  final String firstName;
  final String lastName;
  final int age;
  final String city;
  final String country;
  final String profileImageUrl;
  bool isLiked;

  UserProfile({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.city,
    required this.country,
    required this.profileImageUrl,
    this.isLiked = false,
  });

  String get fullName => '$firstName $lastName';

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['login']['uuid'] ?? '',
      firstName: json['name']['first'] ?? '',
      lastName: json['name']['last'] ?? '',
      age: json['dob']['age'] ?? 0,
      city: json['location']['city'] ?? '',
      country: json['location']['country'] ?? '',
      profileImageUrl: json['picture']['large'] ?? '',
    );
  }

  UserProfile copyWith({
    String? id,
    String? firstName,
    String? lastName,
    int? age,
    String? city,
    String? country,
    String? profileImageUrl,
    bool? isLiked,
  }) {
    return UserProfile(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      city: city ?? this.city,
      country: country ?? this.country,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      isLiked: isLiked ?? this.isLiked,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserProfile &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}
