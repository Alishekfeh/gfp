import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:sahab_app/helper/style.dart';
class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({
    Key key,
    @required this.number,
  }) : super(key: key);

  final TextEditingController number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: KWhite,
          border: Border.all(color: KBlack, width: 0.2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            KBoxShadow
          ]),
      child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CountryCodePicker(
                initialSelection: 'JO',
                enabled: false,
                hideMainText: false,
                showCountryOnly: true,
                showFlagDialog: false,
                showFlag: true,
                showFlagMain: true,
                showDropDownButton: false,
              ),
              Container(
                width: 2,
                height: 22,
                color: Color(0xff707678),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " 79-xxx-xxx ",
                      hintStyle: KHintStyle
                  ),
                ),
              ),
            ],
          )),
    );
  }
}