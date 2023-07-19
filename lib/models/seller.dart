// To parse this JSON data, do
//
//     final seller = sellerFromJson(jsonString);

import 'dart:convert';

List<Seller> sellerFromJson(String str) => List<Seller>.from(json.decode(str).map((x) => Seller.fromJson(x)));

String sellerToJson(List<Seller> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Seller {
  int id;
  String sellerCode;
  int codeTypeId;
  String name;
  dynamic fatherName;
  dynamic motherName;
  String mobile01;
  dynamic mobile02;
  String countryName;
  String facebookProfileName;
  String facebookProfileUrl;
  dynamic facebookPageUrl;
  String email;
  String address;
  int businessModeId;
  dynamic businessName;
  dynamic businessMobile;
  int hasRequestSellerCode;
  int hasPhotoId;
  String photoIdType;
  String photoIdNumber;
  String remarks;
  int createdBy;
  int updatedBy;
  DateTime createTime;
  dynamic updateTime;

  Seller({
    required this.id,
    required this.sellerCode,
    required this.codeTypeId,
    required this.name,
    this.fatherName,
    this.motherName,
    required this.mobile01,
    this.mobile02,
    required this.countryName,
    required this.facebookProfileName,
    required this.facebookProfileUrl,
    this.facebookPageUrl,
    required this.email,
    required this.address,
    required this.businessModeId,
    this.businessName,
    this.businessMobile,
    required this.hasRequestSellerCode,
    required this.hasPhotoId,
    required this.photoIdType,
    required this.photoIdNumber,
    required this.remarks,
    required this.createdBy,
    required this.updatedBy,
    required this.createTime,
    this.updateTime,
  });

  factory Seller.fromJson(Map<String, dynamic> json) => Seller(
    id: json["id"],
    sellerCode: json["seller_code"],
    codeTypeId: json["code_type_id"],
    name: json["name"],
    fatherName: json["father_name"],
    motherName: json["mother_name"],
    mobile01: json["mobile_01"],
    mobile02: json["mobile_02"],
    countryName: json["country_name"],
    facebookProfileName: json["facebook_profile_name"],
    facebookProfileUrl: json["facebook_profile_url"],
    facebookPageUrl: json["facebook_page_url"],
    email: json["email"],
    address: json["address"],
    businessModeId: json["business_mode_id"],
    businessName: json["business_name"],
    businessMobile: json["business_mobile"],
    hasRequestSellerCode: json["has_request_seller_code"],
    hasPhotoId: json["has_photo_id"],
    photoIdType: json["photo_id_type"],
    photoIdNumber: json["photo_id_number"],
    remarks: json["remarks"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createTime: DateTime.parse(json["create_time"]),
    updateTime: json["update_time"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "seller_code": sellerCode,
    "code_type_id": codeTypeId,
    "name": name,
    "father_name": fatherName,
    "mother_name": motherName,
    "mobile_01": mobile01,
    "mobile_02": mobile02,
    "country_name": countryName,
    "facebook_profile_name": facebookProfileName,
    "facebook_profile_url": facebookProfileUrl,
    "facebook_page_url": facebookPageUrl,
    "email": email,
    "address": address,
    "business_mode_id": businessModeId,
    "business_name": businessName,
    "business_mobile": businessMobile,
    "has_request_seller_code": hasRequestSellerCode,
    "has_photo_id": hasPhotoId,
    "photo_id_type": photoIdType,
    "photo_id_number": photoIdNumber,
    "remarks": remarks,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "create_time": createTime.toIso8601String(),
    "update_time": updateTime,
  };
}