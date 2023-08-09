class User {
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  int? height;
  num? weight;
  String? eyeColor;
  Hair? hair;
  String? domain;
  String? ip;
  Address? address;
  String? macAddress;
  String? university;
  Bank? bank;
  Company? company;
  String? ein;
  String? ssn;
  String? userAgent;

  User({
    this.firstName,
    this.lastName,
    this.maidenName,
    this.age,
    this.gender,
    this.email,
    this.phone,
    this.username,
    this.password,
    this.birthDate,
    this.image,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.hair,
    this.domain,
    this.ip,
    this.address,
    this.macAddress,
    this.university,
    this.bank,
    this.company,
    this.ein,
    this.ssn,
    this.userAgent,
  });

  factory User.fromMap(Map<String, Object?> map) {
    return User(
// id: map['id'] as int,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      maidenName: map['maidenName'] as String,
      age: map['age'] as int,
      gender: map['gender'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      username: map['username'] as String,
      password: map['password'] as String,
      birthDate: map['birthDate'] as String,
      image: map['image'] as String,
      bloodGroup: map['bloodGroup'] as String,
      height: map['height'] as int,
      weight: map['weight'] as num,
      eyeColor: map['eyeColor'] as String,
      hair: Hair.fromMap(map["hair"] as Map<String, Object?>),
      domain: map['domain'] as String,
      ip: map['ip'] as String,
      address: Address.fromMap(map["address"] as Map<String, Object?>),
      macAddress: map['macAddress'] as String,
      university: map['university'] as String,
      bank: Bank.fromMap(map["bank"] as Map<String, Object?>),
      company: Company.fromMap(map["company"] as Map<String, Object?>),
      ein: map['ein'] as String,
      ssn: map['ssn'] as String,
      userAgent: map['userAgent'] as String,
    );
  }

  @override
  String toString() {
    return 'User( firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, domain: $domain, ip: $ip, address: $address, macAddress: $macAddress, university: $university, bank: $bank, company: $company, ein: $ein, ssn: $ssn, userAgent: $userAgent,)';
  }
}

class Hair {
  String? color;
  String? type;

  Hair({
    this.color,
    this.type,
  });

  factory Hair.fromMap(Map<String, Object?> map) {
    return Hair(
      color: map['color'] as String,
      type: map['type'] as String,
    );
  }

  @override
  String toString() => 'Hair(color: $color, type: $type)';
}

class Address {
  String? address;
  String? city;
  Coordinates? coordinates;

  Address({
    this.address,
    this.city,
    this.coordinates,
  });

  factory Address.fromMap(Map<String, Object?> map) {
    return Address(
      address: map['address'] as String,
      city: map['city'] as String,
      coordinates:
          Coordinates.fromMap(map["coordinates"] as Map<String, Object?>),
    );
  }

  @override
  String toString() =>
      'Address(address: $address, city: $city, coordinates: $coordinates)';
}

class Coordinates {
  double? let;
  double? lng;

  Coordinates({
    this.let,
    this.lng,
  });

  factory Coordinates.fromMap(Map<String, Object?> map) {
    return Coordinates(
      let: map['lat'] as double,
      lng: map['lng'] as double,
    );
  }

  @override
  String toString() => 'Coordinates(let: $let, lng: $lng)';
}

class Bank {
  String? cardNumber;
  String? cardExpire;
  String? cardType;
  String? currency;
  String? iban;

  Bank({
    this.cardExpire,
    this.cardNumber,
    this.cardType,
    this.currency,
    this.iban,
  });

  factory Bank.fromMap(Map<String, Object?> map) {
    return Bank(
      cardExpire: map['cardExpire'] as String,
      cardNumber: map['cardNumber'] as String,
      cardType: map['cardType'] as String,
      currency: map['currency'] as String,
      iban: map['iban'] as String,
    );
  }

  @override
  String toString() {
    return 'Bank(cardExpire: $cardExpire, cardNumber: $cardNumber, cardType: $cardType, currency: $currency, iban: $iban)';
  }
}

class Company {
  CompanyAddress? companyAddress;
  String? department;
  String? name;
  String? title;

  Company({
    this.companyAddress,
    this.department,
    this.name,
    this.title,
  });

  factory Company.fromMap(Map<String, Object?> map) {
    return Company(
      companyAddress:
          CompanyAddress.fromMap(map['address'] as Map<String, Object?>),
      department: map['department'] as String,
      name: map['name'] as String,
      title: map['title'] as String,
    );
  }

  @override
  String toString() =>
      'Company(department: $department, name: $name, title: $title)';
}

class CompanyAddress {
  String? address;
  String? city;
  Coordinates? cordinates;
  String? postalcode;
  String? state;

  CompanyAddress({
    this.address,
    this.city,
    this.cordinates,
    this.postalcode,
    this.state,
  });

  factory CompanyAddress.fromMap(Map<String, Object?> map) {
    return CompanyAddress(
      address: map['address'] as String,
      city: map['city'] as String,
      cordinates: Coordinates.fromMap(map['coordinates'] as Map<String, Object?>),
      postalcode: map['postalCode'] as String,
      state: map['state'] as String,
    );
  }

  @override
  String toString() {
    return 'CompanyAddress(address: $address, city: $city, cordinates: $cordinates, postalcode: $postalcode, state: $state)';
  }
}

class CompanyCordinates {
  double? let;
  double? lng;

  CompanyCordinates({
    this.let,
    this.lng,
  });

  factory CompanyCordinates.fromMap(Map<String, Object?> map) {
    return CompanyCordinates(
      let: map['let'] as double,
      lng: map['lng'] as double,
    );
  }

  @override
  String toString() => 'CompanyCordinates(let: $let, lng: $lng)';
}
