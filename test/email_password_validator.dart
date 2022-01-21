import 'package:flutter_test/flutter_test.dart';
import 'package:airway_flutter/Pages/User_onboard3.dart';

void main(){
  test('empty name test', (){
    var result = "";
    var returned = NameFieldValidator.validator(result);
    expect('Name is required', returned);
  });

  test('email text test', (){
    var result="";
    var returned = EmailFieldValidator.validator(result);
    expect('', result);
  });

  test('phone number test', (){
    var result="";
    var returned = PhoneFieldValidator.validator(result);
    expect('', result);
  });

  test('phone number length test', (){
    var result="12345678";
    var returned = PhoneFieldValidator.validator(result);
    expect('12345678', result);
  });

  test('Non-empty name test', (){
    var result="gautham";
    var returned = NameFieldValidator.validator(result);
    expect('gautham', result);
  });

  test('Non-empty email test', (){
    var result="gautham@gmail.com";
    var returned = NameFieldValidator.validator(result);
    expect('gautham@gmail.com', result);
  });
}