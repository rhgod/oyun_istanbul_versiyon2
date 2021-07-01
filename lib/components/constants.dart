import 'package:flutter/material.dart';

const kColorOyunIstYesil = Color(0xFF00a786);
const kColorOyunIstMor = Color(0xFF655cc7);
const kColorOyunIstTuruncu = Color(0xFFfbae42);
const kColorOyunIstKirmizi = Color(0xFFf0592a);
const kColorOyunIstPembe = Color(0xFFff7175);
const kColorHafifSari = Color(0xFFede6d4);

const kTextFieldDecoration = InputDecoration(
  hintText: 'hintText',
  hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 1.0),
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
  filled: true,
  fillColor: kColorOyunIstMor,
);
