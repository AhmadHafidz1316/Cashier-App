import 'package:flutter/material.dart';

class CashierPage extends StatefulWidget {
  const CashierPage({super.key});

  @override
  State<CashierPage> createState() => _CashierPageState();
}

class _CashierPageState extends State<CashierPage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
        top: 50,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cashier App",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
          ),
          Text(
            "Semoga Harimu Menyenangkan : )",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: searchController,
            decoration: InputDecoration(
                hintText: 'Cari Produk...',
                hintStyle: TextStyle(color: Colors.grey[400]),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ))),
          ),
          Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[300]),
                      child: Row(children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0)
                          ),
                          color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cokelat Susu",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Minuman",
                                style: TextStyle(
                                  fontSize: 14,
                                   fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                          Text("Rp.  10.000",
                          style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w400
                          ),
                          )
                        ],
                        ),
                        )
                      ],
                      ),
                    );
                  }))
        ],
      ),
    ));
  }
}
