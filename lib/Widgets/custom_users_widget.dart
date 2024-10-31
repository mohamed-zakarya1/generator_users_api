import 'package:flutter/material.dart';

class CustomUsersWidget extends StatelessWidget {
  final String gender;
  final String fullName;
  final String city;
  final String country;
  final String email;
  final String phone;
  final String picture;
  const CustomUsersWidget({super.key, required this.gender, required this.fullName, required this.city, required this.country, required this.email, required this.phone, required this.picture});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage: NetworkImage(picture), radius: 50,),
              Text("Gender : $gender", style: TextStyle(color: Colors.white, fontSize: 25),),
              Text("Name : $fullName", style: TextStyle(color: Colors.white, fontSize: 25),),
              Text("City : $city", style: TextStyle(color: Colors.white, fontSize: 25),),
              Text("Country : $country", style: TextStyle(color: Colors.white, fontSize: 25),),
              Text("Email : $email", style: TextStyle(color: Colors.white, fontSize: 24),),
              Text("Phone : $phone", style: TextStyle(color: Colors.white, fontSize: 25),),
            ],
          ),
        ),
      ),
    );
  }
}
