import 'package:billing/widget/billing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BillingPage extends StatefulWidget {
  const BillingPage({Key? key}) : super(key: key);

  @override
  State<BillingPage> createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  List<DataRow> itemRow = [];

  @override
  void initState() {
    // itemRow.add(tableHeaders(
    //     ["S.NO", "ITEM NO", "ITEM NAME", "QUANTITY", "RATE", "PRICE"]));
    itemRow.add(DataRow(
      cells: [
        DataCell(Text("elejojo"), placeholder: true),
        DataCell(Text("elejojo")),
        DataCell(Text("elejojo")),
        DataCell(Text("elejojo")),
        DataCell(Text("elejojo")),
        DataCell(Text("elejojo"))
      ],
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    topBar(),
                    const SizedBox(
                      height: 10,
                    ),
                    billDetailsCard(),
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                userDetailsCard(),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                billingTable(),
                SizedBox(
                  width: 10.0,
                ),
                searchCard(),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                billTotalCard(),
                SizedBox(
                  width: 10.0,
                ),
                buttonsCard(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget tableFrame() {
    return DataTable(
      border: TableBorder.all(),
      columns: tableHeaders(
          ["S.NO", "ITEM NO", "ITEM NAME", "QUANTITY", "RATE", "PRICE"]),
      rows: itemRow,
    );
  }

  List<DataColumn> tableHeaders(List<String> headerNames) {
    List<DataColumn> headerWidget = headerNames
        .map(
          (name) => DataColumn(
              label: Text(
            name,
            style: const TextStyle(color: Colors.black, fontSize: 20.0),
          )),
        )
        .toList();
    return headerWidget;
  }

  void openTextField() {
    setState(() {
      // itemRow.add(DataRow(cells: []));
    });
  }

  void addItemToList() {}
}
