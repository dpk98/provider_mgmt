class DataModel {

  String? business_name;
  String? address;
  String? email;
  String? phone;

  DataModel({ this.business_name, this.address, this.email, this.phone});

  DataModel.fromJson(Map<String, dynamic> json) {
    business_name = json['business_name'];
    address = json['address'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['business_name'] = this.business_name;
    data['address'] = this.address;
    data['email'] = this.email;
    data['phone'] = this.phone;
    return data;
  }
}