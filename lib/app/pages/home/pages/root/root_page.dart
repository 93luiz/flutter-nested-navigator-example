import 'package:flutter/material.dart';
import 'package:navigation_test/app/pages/home/pages/detail/detail_module.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Root"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: FlatButton(
              child: Text('PUSH'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailModule()
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
