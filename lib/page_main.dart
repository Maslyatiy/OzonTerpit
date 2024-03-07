import 'package:flutter/material.dart';
import 'package:ozon_ept/Cards.dart';
import 'page_ne_main.dart';
class PageMain  extends StatelessWidget {
  const PageMain({super.key});

  @override
Widget  build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("GG"),
        backgroundColor: Colors.red,

      ),


      body:
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
            itemCount: cards.length,
            itemBuilder:(BuildContext context, int index){
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageNeMain(cards: cards[index])),
                  );
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                  ),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Center(
                        child: Image.network(cards[index].images.mainImage),
                      ),
                      Center(
                        child: Text(
                          cards[index].name,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ),
              );





            },
        )





    );


}
}
