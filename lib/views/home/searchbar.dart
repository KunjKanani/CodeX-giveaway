import 'package:flutter/material.dart';
import 'package:giveaway/utils/helper.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          emptyHorizontalBox(width: 10),
          Expanded(
            child: TextFormField(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 23,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "search...",
                hintStyle: TextStyle(
                  fontSize: 23,
                  color: Colors.grey,
                ),
              ),
              showCursor: false,
            ),
          )
        ],
      ),
    );
  }
}
