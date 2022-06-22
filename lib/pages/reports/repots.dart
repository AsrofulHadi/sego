import 'package:flutter/material.dart';
import 'package:sego/css/constWarna.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  final TextStyle whiteText = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader(),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Sellings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          Card(
            elevation: 4.0,
            color: basicWarna,
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                    child: ListTile(
                      leading: Container(
                        alignment: Alignment.center,
                        width: 45.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              height: 20,
                              width: 8.0,
                              color: Colors.yellowAccent,
                            ),
                            const SizedBox(width: 4.0),
                            Container(
                                height: 25, width: 8.0, color: Colors.blue),
                            const SizedBox(width: 4.0),
                            Container(
                              height: 40,
                              width: 8.0,
                              color: Colors.greenAccent,
                            ),
                            const SizedBox(width: 4.0),
                            Container(
                              height: 60,
                              width: 8.0,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                      title: const Text("Month"),
                      subtitle: const Text("189 Customers"),
                    ),
                  ),
                ),
                const VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                    child: ListTile(
                      leading: Container(
                        alignment: Alignment.center,
                        width: 45.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              height: 20,
                              width: 8.0,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 4.0),
                            Container(
                              height: 40,
                              width: 8.0,
                              color: Colors.greenAccent,
                            ),
                            const SizedBox(width: 4.0),
                            Container(
                              height: 25,
                              width: 8.0,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 4.0),
                            Container(
                              height: 60,
                              width: 8.0,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                      title: const Text("Today"),
                      subtitle: const Text("7 Customers"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: _buildTile(
                    color: basicWarna,
                    icon: Icons.dining_sharp,
                    title: "Selling Report",
                    data: "1200 Sellings",
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: _buildTile(
                    color: basicWarna,
                    icon: Icons.currency_exchange,
                    title: "Spend Reports",
                    data: "85 Spends",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: _buildTile(
                    color: basicWarna,
                    icon: Icons.favorite,
                    title: "best selles of month",
                    data: "Sales",
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: _buildTile(
                    color: basicWarna,
                    icon: Icons.portrait,
                    title: "13 Employees",
                    data: "Employee",
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: _buildTile(
                    color: basicWarna,
                    icon: Icons.hub,
                    title: "Users",
                    data: "4 Users",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Container _buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 32.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: basicWarna,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey[800],
                  )),
              Text(
                "Sego Resto",
                style: whiteText.copyWith(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8.0),
            child: ListTile(
              title: Text(
                "M. Asroful Hadi",
                style: whiteText.copyWith(
                  fontSize: 18.0,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25.0,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470'),
              ),
              subtitle: Text(
                "Cashier today",
                style: whiteText.copyWith(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildTile(
      {Color? color,
      IconData? icon,
      required String title,
      required String data}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            size: 45,
            color: Colors.grey[800],
          ),
          Text(
            title,
            style: whiteText.copyWith(
                fontWeight: FontWeight.bold, color: Colors.grey[800]),
          ),
          Text(
            data,
            style: whiteText.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
