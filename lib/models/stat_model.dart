class NbaStatModel {
  int? id;
  String? firstname;
  String? lastname;
  Birth? birth;
  Nba? nba;
  Height? height;
  Weight? weight;
  String? college;
  String? affiliation;
  Leagues? leagues;

  NbaStatModel({this.id, this.firstname, this.lastname, this.birth, this.nba, this.height, this.weight, this.college, this.affiliation, this.leagues});

  NbaStatModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    birth = json['birth'] != null ? Birth.fromJson(json['birth']) : null;
    nba = json['nba'] != null ? Nba.fromJson(json['nba']) : null;
    height = json['height'] != null ? Height.fromJson(json['height']) : null;
    weight = json['weight'] != null ? Weight.fromJson(json['weight']) : null;
    college = json['college'];
    affiliation = json['affiliation'];
    leagues = json['leagues'] != null ? Leagues.fromJson(json['leagues']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    if (birth != null) {
      data['birth'] = birth!.toJson();
    }
    if (nba != null) {
      data['nba'] = nba!.toJson();
    }
    if (height != null) {
      data['height'] = height!.toJson();
    }
    if (weight != null) {
      data['weight'] = weight!.toJson();
    }
    data['college'] = college;
    data['affiliation'] = affiliation;
    if (leagues != null) {
      data['leagues'] = leagues!.toJson();
    }
    return data;
  }
}

class Birth {
  String? date;
  String? country;

  Birth({date, country});

  Birth.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['country'] = country;
    return data;
  }
}

class Nba {
  int? start;
  int? pro;

  Nba({start, pro});

  Nba.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    pro = json['pro'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['start'] = start;
    data['pro'] = pro;
    return data;
  }
}

class Height {
  String? feets;
  String? inches;
  String? meters;

  Height({feets, inches, meters});

  Height.fromJson(Map<String, dynamic> json) {
    feets = json['feets'];
    inches = json['inches'];
    meters = json['meters'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['feets'] = feets;
    data['inches'] = inches;
    data['meters'] = meters;
    return data;
  }
}

class Weight {
  String? pounds;
  String? kilograms;

  Weight({pounds, kilograms});

  Weight.fromJson(Map<String, dynamic> json) {
    pounds = json['pounds'];
    kilograms = json['kilograms'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pounds'] = pounds;
    data['kilograms'] = kilograms;
    return data;
  }
}

class Leagues {
  Standard? standard;

  Leagues({standard});

  Leagues.fromJson(Map<String, dynamic> json) {
    standard = json['standard'] != null ? Standard.fromJson(json['standard']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (standard != null) {
      data['standard'] = standard!.toJson();
    }
    return data;
  }
}

class Standard {
  int? jersey;
  bool? active;
  String? pos;

  Standard({jersey, active, pos});

  Standard.fromJson(Map<String, dynamic> json) {
    jersey = json['jersey'];
    active = json['active'];
    pos = json['pos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['jersey'] = jersey;
    data['active'] = active;
    data['pos'] = pos;
    return data;
  }
}
