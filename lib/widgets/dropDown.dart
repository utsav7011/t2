import 'package:flutter/material.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';
import 'package:language_picker/languages.g.dart';

class LanguageDropDown extends StatefulWidget {
  const LanguageDropDown({super.key});

  @override
  State<LanguageDropDown> createState() => _LanguageDropDownState();
}

class _LanguageDropDownState extends State<LanguageDropDown> {
  final supportedLanguages = [
    Languages.english,
    Languages.french,
    Languages.japanese,
    Languages.korean,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
      decoration: BoxDecoration(
        border: const Border(
          top: BorderSide(color: Colors.grey, width: 2),
          left: BorderSide(color: Colors.grey, width: 2),
          right: BorderSide(color: Colors.grey, width: 2),
          bottom: BorderSide(color: Colors.grey, width: 2),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: LanguagePickerDropdown(
            languages: supportedLanguages,
            onValuePicked: (Language language) {
              print(language.name);
            }),
      ),
    );
  }
}
