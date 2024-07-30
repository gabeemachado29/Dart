// ignore_for_file: dead_code, avoid_function_literals_in_foreach_calls, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_aula/check_box_custom.dart';
import 'package:flutter_aula/check_box_option.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //bool cbIsSelected_1 = false;
  _HomeState();
  String resposta = '';

  //final List<CheckBoxOption> months = [
  //CheckBoxOption(title: 'Janeiro'),
  //CheckBoxOption(title: 'Fevereiro'),
  //CheckBoxOption(title: 'Março'),
  //CheckBoxOption(title: 'Abril'),
  //CheckBoxOption(title: 'Maio'),
  //CheckBoxOption(title: 'Junho'),
  //CheckBoxOption(title: 'Julho'),
  //CheckBoxOption(title: 'Agosto'),
  //CheckBoxOption(title: 'Setembro'),
  //CheckBoxOption(title: 'Outubro'),
  //CheckBoxOption(title: 'Novembro'),
  //CheckBoxOption(title: 'Dezembro'),
  //];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Aula'),
      ),
      body: Row(
        children: <Widget>[
          Row(
            children: <Widget>[
              Radio(
                value: 'sim', 
                groupValue: resposta, 
                onChanged: (value) {
                  setState(() {
                    resposta = value.toString();
                  });
                }),
              const Text('Sim'),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                value: 'não', 
                groupValue: resposta, 
                onChanged: (value) {
                  setState(() {
                    resposta = value.toString();
                  });
                }),
              const Text('Não'),
            ],
          )
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  //void printSelectedMonths() {
    //List<CheckBoxOption> selectedMonths =
        //List.from(months.where((item) => item.checked));

    //selectedMonths.forEach((item) {
      //print(item.title);
    //});
  //}
}

//Container(
        //padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        //child: ListView.builder(
          //shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          //itemCount: months.length,
          //itemBuilder: (_, index) {
            //return CheckBoxCustomWidget(item: months[index]);
          //},
        //),
      //),