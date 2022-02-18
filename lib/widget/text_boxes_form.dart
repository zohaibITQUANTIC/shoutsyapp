import 'package:flutter/material.dart';

class TextBoxesForm extends StatefulWidget {
  const TextBoxesForm({Key? key}) : super(key: key);

  @override
  State<TextBoxesForm> createState() => _TextBoxesFormState();
}

class _TextBoxesFormState extends State<TextBoxesForm> {
  List<String> location = ['One', 'Two', 'Three', 'Four'];

  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Average Brand Deals Per Month',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade400),
            ),
            child: DropdownButton<String>(
              hint: Text('Select ammount'),
              underline: Container(),
              icon: Padding(
                padding: EdgeInsets.only(left: screenWidth - 233),
                child: const Icon(Icons.arrow_drop_down),
              ),
              iconSize: 24,
              //  elevation: 16,
              onChanged: (String? newValue) {
                dropdownValue = newValue!;
              },
              items: location.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'What’s your main social media?',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey.shade400),
            ),
            child: DropdownButton<String>(
              hint: Text('Select network'),
              underline: Container(),
              icon: Padding(
                padding: EdgeInsets.only(left: screenWidth - 222),
                child: const Icon(Icons.arrow_drop_down),
              ),
              iconSize: 24,
              //  elevation: 16,
              onChanged: (String? newValue) {
                dropdownValue = newValue!;
              },
              items: location.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Would you want your inquiries handled?',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              // errorText:
              //    _inputText ? 'Incorrect phone number' : null,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              hintText: 'Add discount',
              // fillColor: Color(0xFFF2F2F2),
              // filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
