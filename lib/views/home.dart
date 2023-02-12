import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    
    final double wd = MediaQuery.of(context).size.width;
    final double hg = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Image.asset("asset/img/back.jpg", fit: BoxFit.cover ,),
          ),
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: Colors.white.withOpacity(.75),
          ),
          Positioned(
            right: 0,
            bottom: 0,
              child: Image.asset("asset/img/esdeath.png", width: wd * 0.3),

          ),


          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ///Clock
              Expanded(

                child:Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: wd,
                      child: Text("22:00", textAlign: TextAlign.center,style: TextStyle(fontSize: 80),)),
                )
            ),



              ////Grid Top
              Expanded(
                flex: 3,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: wd * .65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.lightBlue,
                            spreadRadius: 1,
                            blurRadius: 2
                          ),
                          BoxShadow(
                              color: Colors.lightBlue,
                              spreadRadius: .9,
                              blurRadius: 3
                          ),
                        ]
                      ),
                      child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          ),
                      ),
                    ),
                  )
              ),





            ],
          ),
        ],
      ),
    );
  }
}
