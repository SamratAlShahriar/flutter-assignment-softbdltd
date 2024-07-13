class ApiResponseModel {
  ApiResponseModel({
    this.data,
  });

  ApiResponseModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  List<Data>? data;

  ApiResponseModel copyWith({
    List<Data>? data,
  }) =>
      ApiResponseModel(
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Data {
  Data({
    this.date,
    this.name,
    this.category,
    this.location,
  });

  Data.fromJson(dynamic json) {
    date = json['date'];
    name = json['name'];
    category = json['category'];
    location = json['location'];
  }

  String? date;
  String? name;
  String? category;
  String? location;

  Data copyWith({
    String? date,
    String? name,
    String? category,
    String? location,
  }) =>
      Data(
        date: date ?? this.date,
        name: name ?? this.name,
        category: category ?? this.category,
        location: location ?? this.location,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['name'] = name;
    map['category'] = category;
    map['location'] = location;
    return map;
  }
}
