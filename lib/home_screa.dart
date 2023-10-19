import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List myarr = [
      'ahmed',
      'mohamed',
      'amr',
      'hassan',
      'mahmoud',
      'karim',
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {},
        child: Icon(Icons.plus_one),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
      ),
      appBar: AppBar(
          backgroundColor: Colors.indigo,
          elevation: 0.0,
          title: Text(
            'Chats',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))]),
      backgroundColor: Colors.indigo,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 40, bottom: 40),
          child: Text(
            'Favorit Contacts',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 40),
          height: 100,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 40),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      myarr[index],
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 20),
              itemCount: myarr.length),
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Column(children: [
            Expanded(
              child: ListView.separated(
                itemCount: myarr.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.indigo,
                      child: Icon(Icons.person, size: 40),
                    ),
                    title: Text(myarr[index],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    subtitle: Text('Hello Dear, How are you'),
                    trailing: Text('10.00 pm'),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10),
              ),
            )
          ]),
        ))
      ]),
    );
  }
}
