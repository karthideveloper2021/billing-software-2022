import 'dart:ui';

import 'package:billing/model/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchCard extends StatefulWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  State<SearchCard> createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard> {
  List<ItemDetailsDB> sample = [
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
    ItemDetailsDB(name: "wsefew", no: 01, rate: 12),
  ];

  List<TableRow> searchTableRow = [];

  Map<int, double> columnWidth = {
    0: 80.0,
    1: 100.0,
    2: 180.0,
    3: 100.0,
  };

  Map rowDetails = {};

  ScrollController _tableScrollController = ScrollController();

  @override
  void initState() {
    int index = 0;
    searchTableRow.addAll(sample
        .map((item) =>
            buildRow(rowContent: [++index, item.no, item.name, item.rate]))
        .toList());
    print(searchTableRow);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(
            height: 10,
          ),
          Row(
            children: buildHeader(),
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _tableScrollController,
              child: Table(
                columnWidths: columnWidth.map(
                    (key, value) => MapEntry(key, FixedColumnWidth(value))),
                children: searchTableRow,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildHeader() {
    List<String> headers = ["S.NO", "ITEM NO", "ITEM NAME", "RATE"];
    return headers
        .map((headerName) => SizedBox(
              width: columnWidth[headers.indexOf(headerName)],
              child: Center(
                child: Text(
                  headerName,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ))
        .toList();
  }

  TableRow buildRow({required List rowContent}) {
    return TableRow(
      decoration: BoxDecoration(
        color: (rowContent[0] == 0) ? Colors.pink : Colors.white,
      ),
      children: rowContent.map((data) => Text('$data')).toList(),
    );
  }

  void adddd() {
    setState(() {
      searchTableRow
          .add(buildRow(rowContent: ["esdce", "erefcfr", "eferf", "wef"]));
    });
    _tableScrollController
        .jumpTo(_tableScrollController.position.maxScrollExtent + 50);
  }
}
