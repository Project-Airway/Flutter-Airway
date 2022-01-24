import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:airway_flutter/Pages/main_pages/booking_1.dart';

void main(){



  group('unit tests related to source and destination booking screen', (){

    test('empty source test', (){
      var result = "";
      var actual = SourceValidator.validator(result);
      expect('Source is required', actual);
    });

    test('empty destination test', (){
      var result = "";
      var actual = DestinationValidator.validator(result);
      expect('Destination is required', actual);
    });

    test('empty source test', (){
      var result = "";
      var actual = SourceValidator.validator(result);
      expect('Source is required', actual);
    });

    test('same places for source and destination', (){
      var sourceResult = "Bangalore";
      var destinationResult = "Bangalore";

      var actual  = SourceValidatorAndDestinationValidator.validator(sourceResult , destinationResult);
      expect('places cannot be same', actual);
    });

    test('same places for source and destination', (){
      var sourceResult = "Delhi ";
      var destinationResult = "Delhi";

      var actual  = SourceValidatorAndDestinationValidator.validator(sourceResult , destinationResult);
      expect('', actual);
    });

  });


  group('unit tests related to date selection in booking screen', (){
    test('date cannot be today ', (){
      DateTime selectedDate = DateTime.now();

      var actual = selectedDateValidator.validator(selectedDate);
      expect('Please pick a date other than today', actual);
    });

    test('date cannot be date before than today', (){
      DateTime selectedDate = DateTime.now();
      DateTime yesterday = selectedDate.subtract(Duration(days: 1));
      // selectedDate=(calculateDifference(selectedDate) == -1) as DateTime;
      var actual = selectedDateValidator.validator(yesterday);
      expect('Please pick a date from today', actual);
    });

    test('date cannot be date before than today', (){
      DateTime selectedDate = DateTime.now();
      DateTime yesterday = selectedDate.subtract(Duration(days: 2));
      // selectedDate=(calculateDifference(selectedDate) == -1) as DateTime;
      var actual = selectedDateValidator.validator(yesterday);
      expect('Please pick a date from today', actual);
    });
  });



}