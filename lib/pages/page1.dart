import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: column(),
    );
  }
}

AppBar appBar() {
  return AppBar(
    title: Text('Breakfast',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: SvgPicture.asset(
          'assets/icons/chevron_left_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
          height: 20,
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          width: 20,
        ),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 197, 197, 197),
            borderRadius: BorderRadius.circular(10)),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {},
        child: Container(
          width: 37,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          child: SvgPicture.asset(
            'assets/icons/chevron_left_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
            height: 20,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            width: 20,
          ),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 197, 197, 197),
              borderRadius: BorderRadius.circular(10)),
        ),
      )
    ],
  );
}

Column column() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 40, spreadRadius: 0.0)
          ],
        ),
        child: TextField(
          
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(19),
            prefixIcon: SvgPicture.asset('assets/icons/search.svg'),
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        ),
      )
    ],
  );
}
