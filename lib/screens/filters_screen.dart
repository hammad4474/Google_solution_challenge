// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:solution_challenge/widgets/filter_buttin.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff132d29),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Filters',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          SizedBox(height: 200),
          filter_widget(
              text: 'Job Type',
              filter1: 'Full Time',
              filter2: 'Contract',
              filter3: 'Internship'),
          filter_widget(
              text: 'Remote',
              filter1: 'Remote',
              filter2: 'Onsite',
              filter3: 'Hybrid'),
          filter_widget(
              text: 'Experience Level',
              filter1: 'Internship',
              filter2: 'Entery-level',
              filter3: 'Mid-senior'),
          SizedBox(
            height: 20,
          ),
          Text(
            'Salary Range',
            style: TextStyle(color: Colors.white),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Minimum',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                '-',
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Maximum',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

class filter_widget extends StatelessWidget {
  String text = '';
  String filter1 = '';
  String filter2 = '';
  String filter3 = '';
  filter_widget({
    Key? key,
    required this.text,
    required this.filter1,
    required this.filter2,
    required this.filter3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            FilterButton(text: filter1),
            FilterButton(text: filter2),
            FilterButton(text: filter3),
          ],
        ),
        Divider()
      ],
    );
  }
}
