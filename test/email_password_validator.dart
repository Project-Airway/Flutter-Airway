import 'package:flutter_test/flutter_test.dart';
import 'package:airway_flutter/Pages/User_onboard3.dart';

void main(){
  test('empty name test', (){
    var result = "";
    var returned = NameFieldValidator.validator(result);
    expect('Name is required', returned);
  });
}