import 'package:flutter/material.dart';
import 'package:wallpaper_ui/widget/images_widget.dart';
import 'package:wallpaper_ui/widget/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
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
                   const Icon(
                      Icons.menu ,
                      size: 30,
                      ),
                   const Text(
                      "WallPapers",
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

              // Search Widget
              const SearchWidget(),

              // Tab Bar
             const TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 10),
                labelStyle: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2)),
                ),
                tabs: [
                  Tab(text: "All",),
                  Tab(text: "Trending",),
                  Tab(text: "Featured",),
                  Tab(text: "Nature",),
                  Tab(text: "Sky",),
                  Tab(text: "See",),
                ]
              ),
             const Flexible(
               flex: 1,
               child: TabBarView(
               children: [
                 ImagesWidget(),
                 ImagesWidget(),
                 ImagesWidget(),
                 ImagesWidget(),
                 ImagesWidget(),
                 ImagesWidget(),

               ],
             )
              )

            ],
          ),
        ),
      )
      );
  }
}