import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_container_result.dart';
import 'custom_input_number.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstNumber = 0;
  int secondNumber = 0;
  String operator = '';
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Calculator',
              style: TextStyle(
                color: Color(0xff0D92F3),
                fontSize: 25,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.calculate_outlined,
              color: Color(0xff0D92F3),
              size: 50,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(12),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xff607D8B),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainerResult(
                  height: 85,
                  width: 60,
                  color: const Color(0xff0D92F3),
                  data: '$firstNumber',
                ),
                CustomContainerResult(
                  height: 60,
                  width: 60,
                  color: Colors.red,
                  data: operator,
                ),
                CustomContainerResult(
                  height: 85,
                  width: 60,
                  color: const Color(0xffFFAB40),
                  data: '$secondNumber',
                ),
                const Text(
                  "=",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: 'Timmana',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                CustomContainerResult(
                  height: 85,
                  width: 60,
                  color: Colors.green,
                  data: operator == '÷' && secondNumber == 0
                      ? 'Error'
                      : '$result',
                ),
              ],
            ),
          ),
          const Spacer(),
          CustomInputNumber(
            data: 'First Number ',
            textColor: const Color(0xff0D92F3),
            onPressedAdd: () {
              setState(() {
                firstNumber++;
              });
            },
            onPressedRemove: () {
              setState(() {
                  firstNumber--;

              });
            },
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                data: 'Addition',
                icon: "+",
                onTap: () {
                  operator = '+';
                  result = (firstNumber + secondNumber).toDouble();
                  setState(() {});
                },
              ),
              CustomButton(
                data: 'Subtraction',
                icon: "-",
                onTap: () {
                  operator = '-';
                  result = (firstNumber - secondNumber).toDouble();
                  setState(() {});
                },
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                data: 'Multiplication',
                icon: "x",
                onTap: () {
                  operator = 'x';
                  result = (firstNumber * secondNumber).toDouble();
                  setState(() {});
                },
              ),
              CustomButton(
                data: 'Division',
                icon: "÷",
                onTap: () {
                  operator = '÷';
                  if (secondNumber != 0) {
                    result = double.parse(
                        (firstNumber / secondNumber).toStringAsFixed(2));
                  }
                  setState(() {});
                },
              ),
            ],
          ),
          const Spacer(),
          CustomInputNumber(
            data: 'Second Number ',
            textColor: Colors.orange,
            onPressedAdd: () {
              setState(() {
                secondNumber++;
              });
            },
            onPressedRemove: () {
              setState(() {
                  secondNumber--;

              });
            },
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              firstNumber = 0;
              secondNumber = 0;
              operator = '';
              result = 0;
              setState(() {});
            },
            child: const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xff607D8B),
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color: Color(0xff63519E),
                    fontSize: 25,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
