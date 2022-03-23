import 'package:agrotools/constant/colors.dart';
import 'package:agrotools/widgets/inputfield.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: AppColors.mainGreen, title: Text('Search')),
      body: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.white),
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            Center(
                child: InputField(
                    autofocus: true, icon: Icons.search, label: 'Search')),
          ],
        ),
      ),
    );
  }
}
