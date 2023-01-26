import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.5,
      child: SafeArea(
          child: Column(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Tushar'),
            accountEmail: Text('ptmop@gmail.com'),
            currentAccountPicture: FlutterLogo(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Page 1'),
              subtitle: Text('Tile for page 1'),
              leading: CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 15,
                child: Icon(
                  Icons.numbers,
                  size: 16,
                  color: Colors.amber,
                ),
              ),
              trailing: Icon(Icons.contact_page),
              selectedTileColor: Colors.amber,
              tileColor: Colors.grey,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Page 2'),
              subtitle: Text('Tile for page 2'),
              leading: CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 15,
                child: Icon(
                  Icons.numbers,
                  size: 16,
                  color: Colors.amber,
                ),
              ),
              trailing: Icon(Icons.pattern),
              tileColor: Colors.grey,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Page 3'),
              subtitle: Text('Tile for page 3'),
              leading: CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 15,
                child: Icon(
                  Icons.numbers,
                  size: 16,
                  color: Colors.amber,
                ),
              ),
              trailing: Icon(Icons.accessible_outlined),
              tileColor: Colors.grey,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Page 4'),
              subtitle: Text('Tile for page 4'),
              leading: CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 15,
                child: Icon(
                  Icons.numbers,
                  size: 16,
                  color: Colors.amber,
                ),
              ),
              trailing: Icon(
                Icons.account_balance,
                // shadows: [
                //   Shadow(
                //     color: Colors.black,
                //     blurRadius: 15,
                //     offset: Offset(0, 2.0),
                //   ),
                // ],
              ),
              tileColor: Colors.grey,
            ),
          ),
        ],
      )),
      // backgroundColor: ,
    );
  }
}
