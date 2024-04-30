import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mgmt_app/provider.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<DataProvider>(context, listen: false).getPostData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Handle REST api'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: postMdl.loading
            ? Center(
          child: Container(
            child: const CircularProgressIndicator(),
          ),
        )
            : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                postMdl.data.business_name ?? "",
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              child: Text(
                postMdl.data.phone ?? "",
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                postMdl.data.email ?? "",
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                postMdl.data.address ?? "",
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

