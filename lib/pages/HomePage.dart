import 'package:flutter/material.dart';
import 'package:navaburger/Widgets/AppBarWidget.dart';
import 'package:navaburger/Widgets/CategoriesWidget.dart';
import 'package:navaburger/Widgets/PopularItemsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//
        body: ListView(
      children: [
        //App Bar widgets
        const AppBarWidget(), // AppBar personal
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Que quieres amigo",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.filter_list)
                ],
              ),
            ),
          ),
        ), //Lupa y container filtro
        //Categoria
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Categoria",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ), //categoria
        CategoriesWidget(), // fila imagenes
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Popular",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ), // popular
        PopularItemsWidget(),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Newest",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // newest Item
        //
      ], // widgets varios
    ));
  }
}
