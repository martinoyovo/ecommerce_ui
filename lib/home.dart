import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _customAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          Text("Hello,", style: theme.textTheme.headline2),
          Text("Lamar Jr.", style: theme.textTheme.headline1,),
          SizedBox(height: 9,),
          Row(
            children: [
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: theme.inputDecorationTheme.border,
                    prefixIcon: Icon(Icons.search_rounded, color: Colors.black,),
                    hintStyle: theme.inputDecorationTheme.hintStyle
                  )
                ),
              ),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Icon(Icons.settings_rounded, color: Colors.white,),
              )
            ],
          ),
          SizedBox(height: 25,),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin:EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1617380951201-c3c15ad20534?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjU3NDh8MHwxfHJhbmRvbXx8fHx8fHx8fDE2MTkyNTM3NzQ&ixlib=rb-1.2.1&q=80&w=1080")
                    )
                  ),
                  width: size.width*0.9,
                  height: size.height*0.55,
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

  Widget _customAppBar() => AppBar(
    elevation: 0,
    //leading: Icon(Icons.arrow_back),
    //title: Text('Title'),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(Icons.apps),
      ),
    ],
  );
}
