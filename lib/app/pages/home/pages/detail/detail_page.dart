import 'package:flutter/material.dart';
import 'package:navigation_test/app/pages/home/pages/detail/detail_module.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
        // alignment: Alignment.center,
        child: MaterialButton(
          color: Colors.blue,
          child: Text('PUSH'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailModule()
            ));
          },
        ),
      )
    );
  }
}
