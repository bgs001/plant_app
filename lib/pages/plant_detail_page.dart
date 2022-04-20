import 'package:flutter/material.dart';

import 'plant_list_page.dart';

class PlantDetailPage extends StatelessWidget {
  final int plantId;

  PlantDetailPage(this.plantId);

  @override
  Widget build(BuildContext context) {
    final plant = plants[plantId];
    return Scaffold(
        appBar: AppBar(
          title: Text("Описание растения"),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)
                    ),
                    color: Colors.green,
                  ),
                  child: Text(
                    plant.name,
                    style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),
                  )
              ),
              Image.network(plant.img, width: 200, height:200),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      plant.desc,
                      style: Theme.of(context).textTheme.bodyText1
                  )
              )
            ],
          ),
        )
    );
  }
}