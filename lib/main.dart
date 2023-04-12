import 'package:flutter/material.dart';
import 'package:flutter_application_test/card_widget.dart';
import 'package:flutter_application_test/data.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/main',
    routes: {
      '/main': (context) => const MainPage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Select Your Vehicle",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: allData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: CardWidget(car: allData[index]),
                );
              },
            ),
          ),

          //Я пытался час, даже больше, запихнуть эту тупую кнопку добавления новой машины в конец листвью, но не нашёл как это сделать поэтому сделал имитацию

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.all(5),
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Add New Vehicle',
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 251, 228, 255)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.all(5),
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
