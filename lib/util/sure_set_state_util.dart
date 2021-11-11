
import 'package:flutter/material.dart';

void sureSetState(State instance ,Function() action){
  if(instance.mounted){
    // ignore: argument_type_not_assignable, invalid_use_of_protected_member
    instance.setState(action);
  }
}