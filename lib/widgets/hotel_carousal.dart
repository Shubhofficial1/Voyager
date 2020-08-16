import 'package:flutter/material.dart';
import 'package:voyager/models/hotel_model.dart';


class Hotel_carousal extends StatelessWidget {
  const Hotel_carousal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Exclusive Hotels ',
                style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: (){
                  print('See All ');
                },
                child: Text(
                  'See All',
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hotels.length,
              itemBuilder: (BuildContext context, int index) {
               Hotel hotel = hotels[index];
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: 240.0,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 15.0,
                          child: Container(
                            height: 120.0,
                            width: 240.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    hotel.name,
                                    style: TextStyle(
                                        letterSpacing: 1.2,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22),
                                  ),
                                  SizedBox(height: 2.0,),
                                  Text(
                                    hotel.address,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(height: 2.0,),
                                  Text(
                                    '\$${hotel.price}/night'
                                  ,style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                  ),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0,2.0),
                                blurRadius: 6.0
                            ),],
                          ),
                          child: ClipRRect(
                            borderRadius : BorderRadius.circular(20.0),
                            child: Image(
                              height: 180.0,
                              width: 220.0,
                              image: AssetImage(hotel.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
