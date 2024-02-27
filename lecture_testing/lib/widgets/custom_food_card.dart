import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomFoodCard extends StatelessWidget {

  final String name;
  final String description;
  final String postTitle;
  final String tag;
  final ImageProvider postImg;
  final ImageProvider profileImg;


  const CustomFoodCard({super.key, required this.name, required this.description, required this.postTitle, required this.tag, required this.postImg, required this.profileImg});

  @override
  Widget build(BuildContext context) {
    dynamic currentDate = DateFormat.yMMMd().format(DateTime.now());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double cardHeight = 400;
    double cardWidth = 800;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Theme.of(context).colorScheme.outline,),
            borderRadius: const BorderRadius.all(Radius.circular(0)),
          ),
          child: SizedBox(
            height: cardHeight < screenHeight ? cardHeight : screenHeight,
            width: cardWidth < screenWidth ? cardWidth : screenWidth,
            child: Row(
              children: [
                Container(
                  height: cardHeight < screenHeight ? cardHeight : screenHeight,
                  width: cardWidth < screenWidth ? cardWidth*0.5 : screenWidth*0.50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: postImg,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )),
                      ),
                      child: Text(tag),
                    ),  
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15),
                        child: Text(postTitle, textScaler: const TextScaler.linear(1.75),)
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(description, style: const TextStyle(
                          color: Colors.grey,
                        ),),
                      ),
                      const Spacer(),
                      Divider(color: Colors.grey[75], height: 1,),
                      Container(
                        margin: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.green),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: profileImg,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  Text(name, textScaler: const TextScaler.linear(1.15),),
                                  Text(currentDate, style: const TextStyle(
                                    color: Colors.grey,
                                  ),)
                                ],
                              ),
                            )
                          ]
                        ),
                      ),
                    ],
                  )
                ),
              ],
            ),
          )
        );
      }
    );
  }
}