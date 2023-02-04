import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/models/app_categories.dart';
import 'package:ui_app/models/country.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notifaction = false;
  RangeValues _selectedRange = RangeValues(30, 50);
  String? _groupValue = 'M';
  int? _selectedCountry;
  late TextEditingController _experinceTextController;

  List<String> _experinces = <String>[];
  final List<AppCategories> _categories = <AppCategories>[
    AppCategories(title: 'Jacket'),
    AppCategories(title: 'T-shirt'),
    AppCategories(title: 'Polo'),
  ];
  final List<Country> _countries = <Country>[
    Country(title: 'Palestine', id: 1),
    Country(title: 'Egypt ', id: 2),
    Country(title: 'Moroco ', id: 3),
    Country(title: 'Jordan', id: 4),
  ];

  @override
  void initState() {
    // TODO: implement initState
    _experinceTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _experinceTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      children: [
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          value: _notifaction,
          onChanged: (bool value) {
            setState(() {
              _notifaction = value;
            });
          },
          title: Text(
            'Notifactions',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'Turn Notifactions  ON/OFF',
            style: GoogleFonts.montserrat(),
          ),
          inactiveThumbColor: Colors.pink,
          inactiveTrackColor: Colors.pink.shade100,
          activeColor: Colors.blue,
          activeTrackColor: Colors.blue.shade100,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Rang Slider',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        RangeSlider(
            values: _selectedRange,
            min: 10,
            max: 100,
            divisions: 10,
            labels: RangeLabels(
                _selectedRange.start.toString(), _selectedRange.end.toString()),
            onChanged: (RangeValues value) {
              setState(() {
                _selectedRange = value;
              });
            }),
        SizedBox(
          height: 20,
        ),
        Text('Radio List Tile',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        Row(
          children: [
            Expanded(
              child: RadioListTile<String>(
                  title: Text('Male'),
                  value: 'M',
                  groupValue: _groupValue,
                  onChanged: (String? value) {
                    _groupValue = value;
                  }),
            ),
            Expanded(
              child: RadioListTile<String>(
                  title: Text('Famle'),
                  value: 'F',
                  groupValue: _groupValue,
                  onChanged: (String? value) {
                    setState(() {
                      _groupValue = value;
                    });
                  }),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text('Categories',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        for (AppCategories categoriy in _categories)
          CheckboxListTile(
            value: categoriy.checkedBox,
            checkboxShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            checkColor: Colors.white,
            activeColor: Colors.red,
            onChanged: (bool? value) {
              if (value != null) {
                setState(() {
                  categoriy.checkedBox = value;
                });
              }
            },
            title: Text(categoriy.title),
          ),
        const SizedBox(
          height: 20,
        ),
        Text('Countries',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        DropdownButton<int>(
            isExpanded: true,
            value: _selectedCountry,
            borderRadius: BorderRadius.circular(10),
            dropdownColor: Colors.grey.shade300,
            underline: const Divider(
              color: Colors.grey,
              height: 5,
            ),
            // iconSize: 48,
            hint: const Text('Selected Country'),
            // selectedItemBuilder: (BuildContext context) {
            //   return _countries
            //       .map((e) =>
            //       Align(
            //         alignment: AlignmentDirectional.centerStart,
            //         child: Text(
            //           _countries
            //               .firstWhere(
            //                   (element) => element.id == _selectedCountry)
            //               .title,
            //           style: GoogleFonts.montserrat(
            //             fontWeight: FontWeight.w700,
            //           ),
            //         ),
            //       ))
            //       .toList();
            // },
            items: _countries
                .map((country) =>
                DropdownMenuItem<int>(
                  value: country.id,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(country.title),
                      const Divider(
                        color: Colors.grey,
                        height: 5,
                      ),
                    ],
                  ),
                ))
                .toList(),
            onChanged: (int? value) {
              setState(() {
                _selectedCountry = value;
              });
            }),
        const SizedBox(
          height: 20,
        ),
        Text('Experiences',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        TextField(
          controller: _experinceTextController,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          maxLength: 25,
          onSubmitted: (String value) => _performSave(),
          decoration: InputDecoration(
            counterText: '',
            hintText: 'enter experience',
            prefixIcon: Icon(Icons.work),
            suffixIcon: IconButton(
                onPressed: () {
                  _performSave();
                },
                icon: Icon(Icons.save)),
          ),
        ),
        Wrap(
          spacing: 10,
          children: _experinces.map((e) {
            return Chip(
              backgroundColor: Colors.blue,
              labelStyle: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              label: Text(e),
              deleteIcon: Icon(Icons.close, size: 24,),
              deleteIconColor: Colors.red.shade300,
              onDeleted: () => _delete(e),

            );
          }).toList(),
        )
      ],
    );
  }

  void _performSave() {
    if (_checkData()) {
      _save();
    }
  }

  bool _checkData() {
    if (_experinces.length < 6) {
      if (_experinceTextController.text.isNotEmpty) {
        return true;
      }else{
        showMessage('Enter required data !');
        return false;
      }

    } else {
      showMessage('you hava reached thi limit of count ');
    }

    return false;
    }
    void showMessage(String message){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: Colors.red,));
    }
    void _save() {
    setState(() {
    _experinces.add(_experinceTextController.text);
    _experinceTextController.clear();
    });
    }
    void _delete(String experince){
    setState(() {
    _experinces.remove(experince);
    });
    }
  }
