import 'package:flutter/material.dart';

import 'asssign_const.dart';
class Assign extends StatelessWidget {
   Assign({super.key});
  final List _photo = [
    Data(image: 'asset/img_6.png', text: 'Paris', ),
    Data(image: 'asset/img_7.png', text: 'Maldivs',),
    Data(image: 'asset/img_8.png', text: 'Dubai',),
    Data(image: 'asset/img.png', text: 'Bali')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    'https://i.ytimg.com/vi/QBjXMROWdFo/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAf9mm3zMN8mcthVaY-tG1_pQMOKA',
                    fit: BoxFit.cover,
                  ),
                ),
                 Positioned(
                   top: 90,
                   left: 20,
                   child: Column(
                     children: [
                       Text('Explore The World',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white70),),
                       SizedBox(height: 10,),
                       SizedBox(
                         width: 300,
                         child: TextField(
                           decoration: InputDecoration(
                               labelText: "Search destination",
                               prefixIcon: Icon(Icons.search),
                               filled: true,
                               fillColor: Colors.white70,
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(12),
                                 borderSide: BorderSide.none,
                               )
                           ),
                         ),
                       )
                     ],
                   ),
                 )
              ],
            ),
            SizedBox(height: 10,),
            Align(
              alignment:Alignment.centerLeft,
                child: Text(
                  'Top Destination',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,color: Colors.black),
                )
            ),
            SizedBox(height: 10,),
            GridView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  childAspectRatio: 1.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: _photo.length,
                itemBuilder: (context,index){
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Card(
                              child:ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(_photo[index].image,fit: BoxFit.cover,)
                              ),
                              ),
                              Positioned(
                                top:70,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(_photo[index].text,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
                                  )
                             ) ,
                          ],
                        ),
                      ],
                    ),
                  );
                }
            ),
            Align(
              alignment: Alignment.centerLeft,
                child: Text('Trending Packages',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)),
            SizedBox(height: 10,),
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 5)
                      )
                    ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage('asset/img_1.png',),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                    left: 130,
                    child: Text(
                      'Romantic Paris Get Away',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black),
                    )
                ),
                Positioned(
                    top: 45,
                    left: 125,
                    child: Text(
                      '⏱ 4 Nights - 5 Days',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.grey),
                    )
                ),
                Positioned(
                    top: 75,
                    left: 125,
                    child: Text(
                      '💲799',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.blueAccent),
                    )
                ),
                Positioned(
                  top: 70,
                    left: 270,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        minimumSize: Size(50, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                        onPressed: (){}, child: Text('Book Now',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)
                    )
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 5)
                        )
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage('asset/img_10.png',),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Positioned(
                    top: 20,
                    left: 130,
                    child: Text(
                      'Bali Adventure Tour',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black),
                    )
                ),
                Positioned(
                    top: 45,
                    left: 125,
                    child: Text(
                      '⏱ 4 Nights - 5 Days',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.grey),
                    )
                ),
                Positioned(
                    top: 75,
                    left: 125,
                    child: Text(
                      '💲599',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.blueAccent),
                    )
                ),
                Positioned(
                    top: 70,
                    left: 270,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            minimumSize: Size(50, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                        onPressed: (){}, child: Text('Book Now',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)
                    )
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 5)
                        )
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage('asset/img_11.png',),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Positioned(
                    top: 20,
                    left: 130,
                    child: Text(
                      'Nepal Tour',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black),
                    )
                ),
                Positioned(
                    top: 45,
                    left: 125,
                    child: Text(
                      '⏱ 4 Nights - 5 Days',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.grey),
                    )
                ),
                Positioned(
                    top: 75,
                    left: 125,
                    child: Text(
                      '💲599',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.blueAccent),
                    )
                ),
                Positioned(
                    top: 70,
                    left: 270,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            minimumSize: Size(50, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                        onPressed: (){}, child: Text('Book Now',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)
                    )
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 5)
                        )
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage('asset/img_12.png',),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Positioned(
                    top: 20,
                    left: 130,
                    child: Text(
                      'Maldive Tour',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black),
                    )
                ),
                Positioned(
                    top: 45,
                    left: 125,
                    child: Text(
                      '⏱ 4 Nights - 5 Days',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.grey),
                    )
                ),
                Positioned(
                    top: 75,
                    left: 125,
                    child: Text(
                      '💲599',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.blueAccent),
                    )
                ),
                Positioned(
                    top: 70,
                    left: 270,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            minimumSize: Size(50, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                        onPressed: (){}, child: Text('Book Now',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)
                    )
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 5)
                        )
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage('asset/img.png',),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Positioned(
                    top: 20,
                    left: 130,
                    child: Text(
                      'Romantic Paris Get Away',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black),
                    )
                ),
                Positioned(
                    top: 45,
                    left: 125,
                    child: Text(
                      '⏱ 4 Nights - 5 Days',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.grey),
                    )
                ),
                Positioned(
                    top: 75,
                    left: 125,
                    child: Text(
                      '💲799',
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.blueAccent),
                    )
                ),
                Positioned(
                    top: 70,
                    left: 270,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            minimumSize: Size(50, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                        onPressed: (){}, child: Text('Book Now',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)
                    )
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
