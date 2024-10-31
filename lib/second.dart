import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/number_list_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key, });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context,NumberListProvider,child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
            NumberListProvider.add();
            },
            child: Icon(Icons.add),
          ),
          body: Container(
            child: Column(
              children: [
                Text(
                 NumberListProvider. numbers.last.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                    itemCount:NumberListProvider. numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                       NumberListProvider. numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}