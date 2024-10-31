import 'package:flutter/material.dart';
import 'package:generator_users_api/Providers/generate_users_providers.dart';
import 'package:provider/provider.dart';
import '../Widgets/custom_users_widget.dart';

class UsersHome extends StatelessWidget {
  const UsersHome({super.key});

  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<GenerateUsersProviders>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Generate users', style: TextStyle(color: Colors.white, fontSize: 25),),
        centerTitle: true,
      ),
      body: Consumer<GenerateUsersProviders>(builder: (context, value, child) {
          final generateUsers = value.model;
          if (generateUsers == null) {
            value.fetchApi();
            return const Center(
              child: CircularProgressIndicator()
            );
          } else {
            return ListView.separated(itemBuilder: (context, index) {
              return CustomUsersWidget(gender: generateUsers.data.elementAt(index)["gender"], fullName: generateUsers.data.elementAt(index)["name"],
                  city: generateUsers.data.elementAt(index)["city"], country: generateUsers.data.elementAt(index)["country"],
                  email: generateUsers.data.elementAt(index)["email"], phone: generateUsers.data.elementAt(index)["phone"],
                  picture: generateUsers.data.elementAt(index)["image"]);
            },
                separatorBuilder: (context, index) => const SizedBox(height: 20,),
                itemCount: generateUsers.data.length);
          }
        }
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        obj.fetchApi();
      }, child: Icon(Icons.refresh),),
    );
  }
}
