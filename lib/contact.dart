import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  final storage = FlutterSecureStorage();
  late TextEditingController _textEditingController;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    getValue();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void saveValue(String value) async {
    await storage.write(key: 'my_key', value: value);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Value saved'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void getValue() async {
    String? value = await storage.read(key: 'my_key');
    if (value != null) {
      setState(() {
        _textEditingController.text = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secure storage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Enter a value',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                saveValue(_textEditingController.text);
              },
              child: Text('Save Value'),
            ),
            SizedBox(height: 16),
            Text(
              'Gmail: ${_textEditingController.text}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
