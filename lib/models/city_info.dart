class CityInfo {
  Location? location;
  Current? current;

  CityInfo({this.location, this.current});

  CityInfo.fromJson(Map<String, dynamic> json) {
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (current != null) {
      data['current'] = current!.toJson();
    }
    return data;
  }
}

class Location {
  String? name;
  String? region;
  String? country;
  String? tzId;
  String? localtime;

  Location({this.name, this.region, this.country, this.tzId, this.localtime});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    tzId = json['tz_id'];
    localtime = json['localtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['region'] = region;
    data['country'] = country;
    data['tz_id'] = tzId;
    data['localtime'] = localtime;
    return data;
  }
}

class Current {
  double? tempC;
  double? tempF;
  int? isDay;
  Condition? condition;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;

  Current(
      {this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.feelslikeF});

  Current.fromJson(Map<String, dynamic> json) {
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    data['is_day'] = isDay;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    return data;
  }
}

class Condition {
  String? text;
  String? icon;
  int? code;

  Condition({this.text, this.icon, this.code});

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['icon'] = icon;
    data['code'] = code;
    return data;
  }
}

// class CityInfo {
//   Location? location;
//   Current? current;

//   CityInfo({this.location, this.current});

//   CityInfo.fromJson(Map<String, dynamic> json) {
//     location = json['location'] != null
//         ? new Location.fromJson(json['location'])
//         : null;
//     current =
//         json['current'] != null ? new Current.fromJson(json['current']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.location != null) {
//       data['location'] = this.location!.toJson();
//     }
//     if (this.current != null) {
//       data['current'] = this.current!.toJson();
//     }
//     return data;
//   }
// }

// class Location {
//   String? name;
//   String? region;
//   String? country;
//   String? tzId;
//   String? localtime;

//   Location({this.name, this.region, this.country, this.tzId, this.localtime});

//   Location.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     region = json['region'];
//     country = json['country'];
//     tzId = json['tz_id'];
//     localtime = json['localtime'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['region'] = this.region;
//     data['country'] = this.country;
//     data['tz_id'] = this.tzId;
//     data['localtime'] = this.localtime;
//     return data;
//   }
// }

// class Current {
//   int? tempC;
//   double? tempF;
//   int? isDay;
//   Condition? condition;
//   int? cloud;
//   double? feelslikeC;
//   double? feelslikeF;

//   Current(
//       {this.tempC,
//       this.tempF,
//       this.isDay,
//       this.condition,
//       this.cloud,
//       this.feelslikeC,
//       this.feelslikeF});

//   Current.fromJson(Map<String, dynamic> json) {
//     tempC = json['temp_c'];
//     tempF = json['temp_f'];
//     isDay = json['is_day'];
//     condition = json['condition'] != null
//         ? new Condition.fromJson(json['condition'])
//         : null;
//     cloud = json['cloud'];
//     feelslikeC = json['feelslike_c'];
//     feelslikeF = json['feelslike_f'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['temp_c'] = this.tempC;
//     data['temp_f'] = this.tempF;
//     data['is_day'] = this.isDay;
//     if (this.condition != null) {
//       data['condition'] = this.condition!.toJson();
//     }
//     data['cloud'] = this.cloud;
//     data['feelslike_c'] = this.feelslikeC;
//     data['feelslike_f'] = this.feelslikeF;
//     return data;
//   }
// }

// class Condition {
//   String? text;
//   String? icon;

//   Condition({this.text, this.icon});

//   Condition.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     icon = json['icon'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['text'] = this.text;
//     data['icon'] = this.icon;
//     return data;
//   }
// }