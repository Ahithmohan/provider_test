import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/number_list_provider.dart';
import 'package:provider_test/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context,numberProviderModel,child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
           numberProviderModel.add();
            },
            child: Icon(Icons.add),
          ),
          body: Container(
            child: Column(
              children: [
                Text(
                 numberProviderModel. numbers.last.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount:numberProviderModel. numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numberProviderModel.numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Second(),
                          ));
                    },
                    child: Text("SECOND"))
              ],
            ),
          ),
        );
      }
    );
  }
}
