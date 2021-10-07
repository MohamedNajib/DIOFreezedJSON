import 'package:flutter/material.dart';

import 'core/freezed/network_error.dart';
import 'core/freezed/result.dart';
import 'data/models/login_model.dart';
import 'data/service/json_place_holder_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Result<List<LoginModel>, NetworkError>? userModel;
  //Result<UserModel, NetworkError>? userModel;
  JsonPlaceHolderService service = JsonPlaceHolderService();

  @override
  void initState() {
    super.initState();
    service.login(userName: "265060500844", password: "1").then((data) {
      setState(() {
        userModel = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Clean Network")),
      body: userModel != null
          ? userModel!.when(success: (posts) {
              return Text("${posts[0].shh_Name_Title}");
              // return ListView.builder(
              //     itemCount: posts.length,
              //     itemBuilder: (_, index) {
              //       return Card(
              //         child: ListTile(
              //           leading: Text(posts[index].userId.toString()),
              //           title: Text(posts[index].title ?? 'Empty'),
              //         ),
              //       );
              //     });
            }, failure: (networkError) {
              print('>>>> ${networkError.localizedErrorMessage}');
              return Center(
                  child: Text(
                      networkError.localizedErrorMessage ?? 'Error message',
                      textAlign: TextAlign.center));
            })
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
