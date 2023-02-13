import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  UserInfoPage({Key? key}) : super(key: key);

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
                        print(_uiDController.text);
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
                  "",
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
