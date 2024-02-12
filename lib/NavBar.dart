import 'package:sidebar/CalculatorScreen.dart';
import 'package:sidebar/Seth/About.dart';
import 'package:sidebar/Seth/Welcome.dart';
import 'package:sidebar/Seth/Contact.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('SethMaurice'),
            accountEmail: Text('sethmaurice1@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                'https://png.pngtree.com/thumb_back/fh260/background/20190223/ourmid/pngtree-blue-fluttering-technology-background-boardbackground-image_83398.jpg',
              ),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Welcome()));
            },
          ),
          ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculator'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CalculatorScreen()));
              }),
          ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              }),
          ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contact()));
              }),
          Divider(),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/main');
              }),
        ],
      ),
    );
  }
}
