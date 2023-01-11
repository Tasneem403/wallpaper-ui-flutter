import 'package:flutter/material.dart';
import 'package:wallpaper_ui/widget/images_widget.dart';

class FavPage extends StatelessWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // appBar
            Container(
              // color: Colors.yellow,
              margin:const EdgeInsets.only(top: 5),
              padding:const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                   child: const Icon(
                      Icons.arrow_back ,
                      size: 30,
                      ),
                 ),
                 const Text(
                    "Favourites",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "favPage");
                    },
                    child:const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                        ),
                  ),  
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Your Favourites:",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

           const Flexible(
              flex: 1,
              child: ImagesWidget() ,
            ),

          ],
        ),
      ),
    );
  }
}