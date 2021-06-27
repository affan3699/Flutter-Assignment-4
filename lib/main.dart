import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom App UI',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      debugShowCheckedModeBanner: false,
      home: EcomAppUI(),
    );
  }
}

class EcomAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "   Ecom App UI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Text(
                "Items",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              trailing: Text(
                "View More",
                style: TextStyle(color: Colors.purple, fontSize: 16.0),
              ),
            ),
            Container(
              height: 290,
              //color: Colors.purple,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  horizontalContainerUI(
                      context,
                      "https://www.windowscentral.com/sites/wpcentral.com/files/styles/large_wm_brw/public/field/image/2020/08/samsung-galaxy-note-20-ultra-1.jpg",
                      "Note 20 Ultra"),
                  horizontalContainerUI(
                      context,
                      "https://apollo-singapore.akamaized.net/v1/files/wwc7zm566vp41-PK/image;s=850x0",
                      "MI Box S"),
                  horizontalContainerUI(
                      context,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuoQlGKW_PU5EjeUIR9SoXnZSj1jUWT-h0IA&usqp=CAU",
                      "Macbook Air"),
                  horizontalContainerUI(
                      context,
                      "https://www.telemart.pk/uploads/product_image/product_36068_1.jpg",
                      "Nivdia 1080 TI"),
                  horizontalContainerUI(
                      context,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmpLeNCyjCDidDuFU3SWPU3Q7aGkqHT9FCkg3oGMhn7JTOU1wBfbjB9bTKUZJ8T90KCHw&usqp=CAU",
                      "Iphone 12"),
                  horizontalContainerUI(
                      context,
                      "https://i2.wp.com/electronicgears.com.pk/wp-content/uploads/2020/11/Intel-Core-i7-10700k-10th-Generation-Processor-LGA1200-Comet-Lake.jpg?fit=825%2C825&ssl=1",
                      "Core i7"),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Text(
                "More Categories",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            Container(
              height: 80,
              //color: Colors.yellow,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  horizontalListTile(context, "Electronic"),
                  horizontalListTile(context, "Clothes"),
                  horizontalListTile(context, "Appliances"),
                  horizontalListTile(context, "Others"),
                ],
              ),
            ),
            ListTile(
              leading: Text(
                "Popular Items",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              trailing: Text(
                "View More",
                style: TextStyle(color: Colors.purple, fontSize: 16.0),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                verticalContainerUIGridView(
                    context,
                    "https://www.windowscentral.com/sites/wpcentral.com/files/styles/large_wm_brw/public/field/image/2020/08/samsung-galaxy-note-20-ultra-1.jpg",
                    " Note 20 Ultra"),
                verticalContainerUIGridView(
                    context,
                    "https://apollo-singapore.akamaized.net/v1/files/wwc7zm566vp41-PK/image;s=850x0",
                    " MI Box S"),
                verticalContainerUIGridView(
                    context,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuoQlGKW_PU5EjeUIR9SoXnZSj1jUWT-h0IA&usqp=CAU",
                    " Macbook Air"),
                verticalContainerUIGridView(
                    context,
                    "https://www.telemart.pk/uploads/product_image/product_36068_1.jpg",
                    " Nivdia 1080 TI"),
                verticalContainerUIGridView(
                    context,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmpLeNCyjCDidDuFU3SWPU3Q7aGkqHT9FCkg3oGMhn7JTOU1wBfbjB9bTKUZJ8T90KCHw&usqp=CAU",
                    " Iphone 12"),
                verticalContainerUIGridView(
                    context,
                    "https://i2.wp.com/electronicgears.com.pk/wp-content/uploads/2020/11/Intel-Core-i7-10700k-10th-Generation-Processor-LGA1200-Comet-Lake.jpg?fit=825%2C825&ssl=1",
                    " Core i7"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget horizontalContainerUI(
    BuildContext context, String networkImage, String productName) {
  return Container(
    margin: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    width: 335,
    height: 260,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 190,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(networkImage),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          productName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Text(" 5.0 (23 Reviews)", style: TextStyle(fontSize: 15.0)),
          ],
        )
      ],
    ),
  );
}

Widget horizontalListTile(BuildContext context, String itemCategory) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: 192,
    margin: EdgeInsets.all(11.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    child: ListTile(
      leading: Icon(
        Icons.phone_android,
        size: 20.0,
        color: Colors.purple,
      ),
      title: Text(
        itemCategory,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      subtitle: Text("20 items", style: TextStyle(fontSize: 11.0)),
    ),
  );
}

Widget verticalContainerUIGridView(
    BuildContext context, String networkImage, String productName) {
  return Container(
    margin: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(networkImage),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          productName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Text(" 5.0 (23 Reviews)", style: TextStyle(fontSize: 12.0)),
          ],
        )
      ],
    ),
  );
}
