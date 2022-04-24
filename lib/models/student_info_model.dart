class StudentInfoModel {
  String? name;
  String? image;
  String? id;
  StudentInfoModel({this.name, this.image, this.id});

  factory StudentInfoModel.fromJson(Map<String, dynamic> json) {
    return StudentInfoModel(
      name: json["name"],
      image: json["image"],
      id: json["id"]
    );
  }
}