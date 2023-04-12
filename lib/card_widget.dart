import 'package:flutter/material.dart';
import 'package:flutter_application_test/data.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key, required this.car}) : super(key: key);

  final Car car;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool? selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected!;
        });
      },
      child: Center(
        child: Card(
          elevation: 1,
          shape: selected!
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  side: BorderSide(color: Colors.blue, width: 2),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
          child: SizedBox(
            width: 300,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Image.network(
                        height: 60,
                        width: 60,
                        widget.car.image,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.car.name),
                        Text(
                          widget.car.model,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),

                // Этот радио вообще непонятный тип тоже над ним долго сидел вроде всё правильно делал чер энум все дела, но он нифига не работает,
                // поэтому заменил его чекбоксом. Вообще я бы нормально через провайдер все сделал, чтобы выбираться только одна машина могла, но это геморой
                // стейтфул виджеты это ужас

                // Radio(
                //     value: widget.car.id,
                //     groupValue: selectedCar,
                //     onChanged: (value) {
                //       setState(() {
                //         selectedCar = value;
                //       }); //selected value
                //     })
                Checkbox(
                  value: selected,
                  onChanged: (value) {
                    setState(() {
                      selected = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
