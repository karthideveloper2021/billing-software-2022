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
  );
}

Widget searchCard() {
  return Container(
    width: 500,
    height: 450,
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      children: [
        Container(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "search..",
              hintStyle: const TextStyle(color: Colors.white),
              filled: true,
              fillColor: const Color.fromARGB(255, 202, 199, 199),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(9.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
                borderSide: BorderSide.none,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: (searchItem) {},
          ),
        ),
        DataTable(
          columns: tableHeaders(["S.NO", "ITEM NO", "ITEM NAME", "RATE"]),
          rows: [],
          decoration: BoxDecoration(),
        ),
      ],
    ),
  );
}

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
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 10.0),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 150,
                  height: 30,
                  child: Center(
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 300,
                  height: 30,
                  child: Center(
                    child: Text(
                      "PRINT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
