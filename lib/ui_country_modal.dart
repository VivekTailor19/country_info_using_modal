import 'package:country_info_using_modal/dataModal_country.dart';
import 'package:flutter/material.dart';

class Country_UI extends StatefulWidget {
  const Country_UI({Key? key}) : super(key: key);

  @override
  State<Country_UI> createState() => _Country_UIState();
}

class _Country_UIState extends State<Country_UI> {



  @override
  Widget build(BuildContext context) {

    Modal_Country mc1 = ModalRoute.of(context)!.settings.arguments as Modal_Country;

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.brown,

        title: Text(
          "${mc1.flag} ${mc1.countryname} ${mc1.flag}",
          style: TextStyle(fontSize: 25, letterSpacing: 5),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${mc1.countryname}",
              style: TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 15,
                  color: Colors.amber),
            ),
            Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              child: Image.network("${mc1.president}",height: 300,width: 300,),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("${mc1.info1}"),
            )

          ],
        ),
      ),
    );
  }
}