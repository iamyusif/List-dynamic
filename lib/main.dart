import 'package:flutter/material.dart';

import 'detay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var country = ["India", "USA", "UK", "Canada", "Australia", "New Zealand","Azerbaijan","Turkey","Russia","Afganistan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country List"),
      ),
      body: ListView.builder(
        itemCount: country.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // navigate to detail page
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detay(
                            ulkeAdi: country[index],
                          )));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              borderOnForeground: true,
              elevation: 10,
              color: Colors.green,
              shadowColor: Colors.white,

              child: ListTile(
                // add icon
                leading: Icon(Icons.flag),
                contentPadding: EdgeInsets.all(10),
                iconColor: Colors.white,
                title: Text(country[index]),
                subtitle: // creating date time clock and minute and second
                    Text(DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString() +
                        ":" +
                        DateTime.now().second.toString()),

                trailing: Icon(Icons.arrow_forward_ios),

              ),
            ),
          );
        },
      ),
    );
  }
}
