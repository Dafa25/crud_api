import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_api/model/user.dart';
import 'package:flutter_application_api/services/user_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Karyawan> users = [];

  void fetchUser() async {
    final result = await UserService.fetchUsers();
    users = result;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUser();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App API")),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar),
                ),
                title: Text(user.name),
                subtitle: Text(user.job),
              ),
            );
          }),
    );
  }
}
