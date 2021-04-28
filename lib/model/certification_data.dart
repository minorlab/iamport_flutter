import 'dart:convert';

import './iamport_url.dart';

class CertificationData {
  String merchnatUid; // 주문번호
  String? company; // 회사명 또는 URL
  String? carrier; // 통신사
  String? name; // 본인인증 할 이름
  String? phone; // 본인인증 할 휴대폰 번호
  int? minAge; // 허용 최소 만 나이

  CertificationData(
    this.merchnatUid,
    this.company,
    this.carrier,
    this.name,
    this.phone,
    this.minAge,
  );

  CertificationData.fromJson(Map<String, dynamic> data)
      : merchnatUid = data['merchantUid'],
        company = data['company'],
        carrier = data['carrier'],
        name = data['name'],
        phone = data['phone'],
        minAge = data['minAge'];

  String toJsonString() {
    Map<String, dynamic> jsonData = {
      'merchant_uid': merchnatUid,
      'm_redirect_url': IamportUrl.redirectUrl,
    };

    if (company != null) {
      jsonData['company'] = company;
    }
    if (carrier != null) {
      jsonData['carrier'] = carrier;
    }
    if (name != null) {
      jsonData['name'] = name;
    }
    if (phone != null) {
      jsonData['phone'] = phone;
    }
    if (minAge != null) {
      jsonData['min_age'] = minAge;
    }

    return jsonEncode(jsonData);
  }
}
