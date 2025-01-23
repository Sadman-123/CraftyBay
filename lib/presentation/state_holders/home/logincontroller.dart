import 'package:craftybay/data/api/api_urls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Logincontroller extends GetxController{
  Future<void>Registration(BuildContext context,TextEditingController fname,TextEditingController lname,TextEditingController city,TextEditingController mobile,TextEditingController address)
  async{
    if(fname.text.isEmpty || lname.text.isEmpty || mobile.text.isEmpty || city.text.isEmpty || address.text.isEmpty)
      {
        final stk=SnackBar(content: Text("Please Fill the Blanks"));
        ScaffoldMessenger.of(context).showSnackBar(stk);
        return;
      }
    else{
      var dat={
        "firstName":fname.text.trim(),
        "lastName":lname.text.trim(),
        "mobile":mobile.text.trim(),
        "city":city.text.trim(),
        "shippingAddress":address.text.trim()
      };
      var url=Uri.parse(ApiUrls.register);
      var res=await http.post(url,headers: {
        'Content-Type':'application/json'
      },body: jsonEncode(dat));
      if(res.statusCode==200)
        {
          final stk=SnackBar(content: Text("Successfully Created"));
          ScaffoldMessenger.of(context).showSnackBar(stk);
        }
    }
  }
}