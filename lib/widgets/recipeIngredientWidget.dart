import 'package:flutter/material.dart';
import '../class/recipe.dart';

List<Widget> getListIngredientsWidgetFromMap(List<Ingredient> ingredients) {
  List<Widget> widgets = [];

  ingredients.forEach((value) {
    widgets.add(RecipeIngredients(name: value.name, unit: value.type!, value: value.quantity.toString()));
  });

  return widgets;
}

class RecipeIngredients extends StatelessWidget {
  final String name;
  final String value;
  final String unit;
  const RecipeIngredients({Key? key, required this.name, required this.unit, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: ShapeDecoration(
          color: const Color.fromARGB(255, 236, 236, 236),
          shape: RoundedRectangleBorder (
              borderRadius: BorderRadius.circular(32.0),
              side: const BorderSide(
                  width: 10,
                  color: Color.fromARGB(0, 236, 236, 236),
              )
          )
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'CircularStd',
                    fontWeight: FontWeight.bold),
              ),
            )
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                value.toString() + unit,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: 'CircularStd',
                    fontWeight: FontWeight.bold),
              ),
            )
          )
        ],
      ),
    );
  }
}