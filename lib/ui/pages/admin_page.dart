import 'package:flutter/material.dart';
import 'package:vibe_admin_panel/ui/pages/user_info_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vibe_admin_panel/firebase_options.dart';

class AdminHomePage extends StatelessWidget {
  AdminHomePage({Key? key}) : super(key: key);

  final TextEditingController _uiDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('They Vibin, We Rollin'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              width: 400,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _uiDController,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserInfoPage()));
                        print(_uiDController.text + " içmek istiyorum");
                      },
                      icon: const Icon(Icons.search))
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: double.maxFinite,
            ),
            Column(
              children: const [
                Text(
                  "kime bakmıştın hemşerim?",
                  style: TextStyle(fontStyle: null),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
