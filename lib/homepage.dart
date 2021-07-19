import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset("assets/5.png"),
                accountName: Text("Example"),
                accountEmail: Text("example@gmail.com")),
            ListTile(
              title: Text("Notes"),
              subtitle: Text(
                "My notes",
                style: GoogleFonts.lato(),
              ),
              leading: Icon(Icons.note),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Notes clicked",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    gravity: ToastGravity.BOTTOM,
                    toastLength: Toast.LENGTH_SHORT);
              },
            ),
            ListTile(
              title: Text("Setting"),
              subtitle: Text("My Setting"),
              leading: Icon(Icons.settings),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Settings pressed",
                    backgroundColor: Colors.blue,
                    gravity: ToastGravity.BOTTOM,
                    toastLength: Toast.LENGTH_SHORT);
              },
            ),
            ListTile(
              title: Text("About Us"),
              subtitle: Text("About us page"),
              leading: Icon(Icons.info),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "About us pressed",
                    backgroundColor: Colors.blue,
                    gravity: ToastGravity.BOTTOM,
                    toastLength: Toast.LENGTH_SHORT);
              },
            ),
          ],
        ),
      ),
    );
  }
}
