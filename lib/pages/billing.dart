import 'package:billing/layout/billing_widget.dart';
import 'package:billing/layout/search_card.dart';
import 'package:flutter/material.dart';

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
                SearchCard(),
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
}
