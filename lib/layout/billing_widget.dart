import 'package:billing/widget/kwidget/kwidget_button.dart';
import 'package:flutter/material.dart';

Widget billDetailsCard() {
  return Container(
    width: 644,
    height: 97,
    decoration: BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
  );
}

Widget userDetailsCard() {
  return Container(
    width: 608,
    height: 159,
    decoration: BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
  );
}

Widget topBar() {
  return Row(
    children: [
      Container(
        width: 156,
        height: 56,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
      ),
      SizedBox(
        width: 10.0,
      ),
      Container(
        width: 478,
        height: 56,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
      ),
    ],
  );
}

Widget billingTable() {
  return Container(
    width: 990,
    height: 450,
    decoration: BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
    child: DataTable(
      columns: tableHeaders(
          ["S.NO", "ITEM NO", "ITEM NAME", "QUANTITY", "RATE", "PRICE"]),
      rows: [],
    ),
  );
}

// Widget searchCard() {
//   return Container(
//     width: 500,
//     height: 450,
//     decoration: BoxDecoration(
//       color: Colors.grey,
//       borderRadius: BorderRadius.circular(10.0),
//     ),
//     child: Column(
//       children: [
//         Container(
//           width: 300,
//           child: TextField(
//             decoration: InputDecoration(
//               prefixIcon: const Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//               hintText: "search..",
//               hintStyle: const TextStyle(color: Colors.white),
//               filled: true,
//               fillColor: const Color.fromARGB(255, 202, 199, 199),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide.none,
//                 borderRadius: BorderRadius.circular(9.0),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(13.0),
//                 borderSide: BorderSide.none,
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(13.0),
//                 borderSide: BorderSide.none,
//               ),
//             ),
//             onChanged: (searchItem) {},
//           ),
//         ),
//         DataTable(
//           columns: tableHeaders(["S.NO", "ITEM NO", "ITEM NAME", "RATE"]),
//           rows: itemRow(),
//         ),
//       ],
//     ),
//   );
// }

List<DataColumn> tableHeaders(List<String> headerNames) {
  List<DataColumn> headerWidget = headerNames
      .map(
        (name) => DataColumn(
            label: Text(
          name,
          style: const TextStyle(color: Colors.black, fontSize: 15.0),
        )),
      )
      .toList();
  return headerWidget;
}

Widget billTotalCard() {
  return Container(
    width: 990,
    height: 120,
    decoration: BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
  );
}

Widget buttonsCard() {
  return Container(
    width: 500,
    height: 120,
    decoration: BoxDecoration(
      // color: Colors.grey,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            const SizedBox(width: 10.0),
            Kbutton(
              Ktext: "CANCEL",
              KtextColor: Colors.red,
              KbackgroundColor: Colors.white,
              KfontWeight: FontWeight.w900,
              Kwidth: 150.0,
              Kheight: 30.0,
              KhoverBackgroundColor: Color.fromARGB(109, 137, 173, 203),
              KborderRadius: BorderRadius.circular(8.0),
            ),
            SizedBox(width: 10.0),
            Kbutton(
              Ktext: "PRINT",
              KtextColor: Colors.pink,
              KfontWeight: FontWeight.w900,
              Kwidth: 300.0,
              Kheight: 30.0,
              KhoverBackgroundColor: Color.fromARGB(130, 229, 17, 194),
              KhoverTextColor: Colors.white,
              Kgradient: const LinearGradient(
                colors: [Colors.pink, Colors.white, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              KborderRadius: BorderRadius.circular(8.0),
            ),
          ],
        ),
      ],
    ),
  );
}
