import 'package:carousel_slider/carousel_slider.dart';
import 'package:deals_dray/core/utils/utils.dart';
import 'package:deals_dray/features/auth/phone_number.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "assets/slidder.png",
    "assets/img.jpeg",
  ];

  List categories = [
    {
      "color": 0xff767AE6,
      "name": "Mobile",
      "Icon": Icon(
        Icons.phone_android,
        color: Colors.white,
      ),
    },
    {
      "color": 0xff25B388,
      "name": "Laptop",
      "Icon": Icon(
        Icons.laptop,
        color: Colors.white,
      ),
    },
    {
      "color": 0xffFB578E,
      "name": "Camera",
      "Icon": Icon(
        Icons.camera_alt,
        color: Colors.white,
      ),
    },
    {
      "color": 0xffF18C48,
      "name": "LED",
      "Icon": Icon(
        Icons.lightbulb,
        color: Colors.white,
      ),
    },
  ];
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        actions: [
          SizedBox(
            width: w * 0.7,
            height: w * 0.1,
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(w * 0.03)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(w * 0.03)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(w * 0.03),
                  ),
                  hintText: "Search here",
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          SizedBox(
            width: w * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {

      },
          backgroundColor: Colors.red,
          label: Row(
            children: [
              Icon(Icons.chat),
              SizedBox(
                width: w*0.03,
              ),
              Text("Chat")
            ],
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: CarouselSlider(
                  items: List.generate(
                    images.length,
                    (index) => Container(
                      margin: EdgeInsets.all(w * 0.02),
                      height: w * 0.4,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(w * 0.03),
                          image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  options: CarouselOptions(
                    enableInfiniteScroll: true,
                    pauseAutoPlayOnTouch: true,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(
                        () {},
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: w * 0.04,
              ),
              Container(
                height: w * 0.35,
                width: w * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.03),
                    gradient: LinearGradient(colors: [
                      const Color(0xff5358CD),
                      const Color(0xff858AF2),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "KYC Pending",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.05),
                    ),
                    Center(
                        child: Text(
                      "You need to provide the required \n documents for your account activation.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumberScreen(),));
                      },
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: w * 0.05,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: w * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: w * 0.3,
                  width: w * 1,
                  child: ListView.separated(
                    itemBuilder: (context, index) => SizedBox(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: w * 0.1,
                            child: categories[index]["Icon"],
                            backgroundColor: Color(categories[index]["color"]),
                          ),
                          Text(categories[index]["name"])
                        ],
                      ),
                    ),
                    shrinkWrap: true,
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: w * 0.03,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: w * 0.05,
              ),
              Container(
                height: h * 0.6,
                width: w * 0.9,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff5EAFCC),
                    Color(0xff7CC2CE),
                  ], begin: Alignment.bottomLeft),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Exclusive for you".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.05,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.arrow_right,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: w * 0.04,
                    ),
                    SizedBox(
                      height: h*0.5,
                      child: ListView.separated(
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: h * 0.5,
                            width: w * 0.6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(w * 0.02),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(children: [
                                    Image.asset("assets/deals_logo.png"),
                                    Positioned(
                                      right: w*0.04,
                                      child: Container(
                                        height: w*0.06,
                                        width: w*0.17,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(w*0.02),
                                            color: Colors.green
                                        ),
                                        child: Center(
                                          child: Text("32% off",style: TextStyle(
                                              fontSize: w*0.035,
                                              color: Colors.white
                                          ),),
                                        ),
                                      ),
                                    )
                                  ]),
                                  Text("Nokia")
                                ],
                              ),
                            ),
                          ),
                        ),
                        itemCount: 3,
                        separatorBuilder: (context, index) => SizedBox(
                          width: w*0.03,
                        ),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),

                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
