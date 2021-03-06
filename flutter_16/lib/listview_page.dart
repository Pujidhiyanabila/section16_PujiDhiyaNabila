import 'package:flutter/material.dart';
import 'package:flutter_16/contacts.dart';
import 'package:flutter_16/create.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contacts"),
        actions: <Widget>[
          Padding(padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            final Message message = messageData[index];
            return ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(message.imgProfile),
              ),
              title: Text(
                message.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text(
                message.messageText
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          }, itemCount: messageData.length
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => FlutterForm()),
            );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}