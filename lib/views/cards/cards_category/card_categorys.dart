import 'package:card_poc/constains/constains.dart';
import 'package:card_poc/views/card_templets/view_templet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CardCategorys extends StatelessWidget {
  List<Map<String, Object>> saveTheDateTempltes;
  String cardCategoryName;

  CardCategorys(this.saveTheDateTempltes, this.cardCategoryName);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("${cardCategoryName}"),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          itemCount: saveTheDateTempltes.length,
          itemBuilder: (BuildContext context, int index) => Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ViewTemplet(
                          saveTheDateTempltes[index]['templetWidget']
                          as Widget,
                          saveTheDateTempltes[index]['editImage'] as String,
                          saveTheDateTempltes[index]['price'] as String,
                          saveTheDateTempltes[index]['categories']
                          as String,
                          saveTheDateTempltes[index]['templetId'] as String,
                          saveTheDateTempltes,
                          index as int)),
                );
              },
                child: Image.network(
                    "${saveTheDateTempltes[index]['sampleImage']}")),
          ),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
        /*GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: saveTheDateTempltes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (0.62), crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    color: Colors.transparent,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(5.0),
                    //   color: Colors.white,
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.grey,
                    //       offset: Offset(0.0, 1.0), //(x,y)
                    //       blurRadius: 10.0,
                    //     ),
                    //   ],
                    // ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewTemplet(
                                  saveTheDateTempltes[index]['templetWidget']
                                      as Widget,
                                  saveTheDateTempltes[index]['editImage'] as String,
                                  saveTheDateTempltes[index]['price'] as String,
                                  saveTheDateTempltes[index]['categories']
                                      as String,
                                  saveTheDateTempltes[index]['templetId'] as String,
                                  saveTheDateTempltes,
                                  index as int)),
                        );
                      },
                      child: Image.network("${saveTheDateTempltes[index]['editImage']}",
                        height: 280,

                        // width: 150,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        )*/
        ,
      ),
    ));
  }
}
