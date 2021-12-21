import 'package:flutter/material.dart';
import 'package:seven_world_wonders/data/world_wonders.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double cardWidth = MediaQuery.of(context).size.width / 3.0;
    double cardHeight = MediaQuery.of(context).size.height / 3.3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('7 World Wonders'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: worldWondersList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: cardWidth / cardHeight,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/details', arguments: worldWondersList[index]);
            },
            child: Card(
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      worldWondersList[index].image
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(worldWondersList[index].name, style: const TextStyle(color: Colors.yellow, fontSize: 25.0),),
                      ),
                      subtitle: Text(worldWondersList[index].description, style: const TextStyle(color: Colors.yellow),),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
