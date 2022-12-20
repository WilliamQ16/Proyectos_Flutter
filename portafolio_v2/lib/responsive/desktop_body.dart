import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget{
  const DesktopScaffold({Key? key}) : super(key: key);

  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold>{
  List _item = [0, 1, 2, 3];

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myDrawer,

            Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                            itemBuilder: (context, index) {
                              return MyBox(
                                number: index,
                              );
                            },
                      ),
                    ),
                  ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return MyTile(
                          number: index,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage("../images/pic6.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Text("Contáctenos:", style: Theme.of(context).textTheme.headline3,),
                              Text(""),
                              Text("miplacita@gmail.com"),
                              Text("Teléfonos: 8324243 - 8252456"),
                              Text(""),
                              Text("Visitenos en nuestras redes sociales:"),
                              Text(""),
                              Text("Facebook: @miplacita"),
                              Text("Instagram: @miplacita"),
                              Text("Twitter: @miplacita"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}