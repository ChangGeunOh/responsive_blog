import 'package:flutter/material.dart';

import '../../../../common/const/theme.dart';
import 'side_bar_container.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: 'Search',
      child: TextField(
        onChanged: (value) {},
        decoration: const InputDecoration(
          hintText: 'Type Here ...',
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultPadding / 2),
            ),
            borderSide: BorderSide(
              color: Color(0xFFCCCCCC),
            ),
          ),
        ),
      ),
    );
  }
}
