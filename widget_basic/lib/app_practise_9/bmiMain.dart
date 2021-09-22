import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_basic/app_practise_9/bmiResult.dart';

class BmiMain extends StatefulWidget {
  BmiMain({Key? key}) : super(key: key);

  @override
  _BmiMainState createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _formKey = GlobalKey<FormState>();

  final _heightCotroller = TextEditingController();
  final _weightController = TextEditingController();

  @override
  void dispose() {
    _heightCotroller.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 계산기'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Height',
                ),
                controller: _heightCotroller,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value != null) {
                    if (value.trim().isEmpty) {
                      return 'insert your height';
                    }
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'weight',
                ),
                controller: _weightController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value != null) {
                    if (value.trim().isEmpty) {
                      return 'insert your weight';
                    }
                    return null;
                  }
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BmiResult(
                              height:
                                  double.parse(_heightCotroller.text.trim()),
                              weight:
                                  double.parse(_weightController.text.trim()),
                            ),
                          ));
                    }
                  },
                  child: Text('Result'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
