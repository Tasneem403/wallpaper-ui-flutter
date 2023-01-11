import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: DismissiblePage(
        onDismissed: (){
          Navigator.of(context).pop();
        },
        direction: DismissiblePageDismissDirection.multi,
        child: Hero(
          tag: "1",
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration:const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/nature1.png")
              ),
            ),
            child: Container(
              padding:const EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomCenter,
              color: Colors.black.withOpacity(0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 40,
                      ),
                    ),
                    Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.download,
                      color: Colors.white,
                      size: 40,
                      ),
                    ),
                    Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 40,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        ),
    );
  }
}