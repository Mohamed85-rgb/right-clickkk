import 'package:flutter/material.dart';
import 'package:my_fatoorah/my_fatoorah.dart';
import 'dart:developer';
import 'ListViewPage.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my_fatoorah Demo'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              color: Theme.of(context).primaryColor,
              child: Text('Show Payment'),
              onPressed: () async {
                var response = await MyFatoorah.startPayment(
                  // afterPaymentBehaviour: AfterPaymentBehaviour.AfterCallbackExecution,
                  context: context,
                  errorChild: Center(child: Text('error', style: TextStyle(color: Colors.red))),
                  request: MyfatoorahRequest.test(
                    currencyIso: Country.SaudiArabia,
                    successUrl: 'https://th.bing.com/th/id/OIP.eUN6r3ma_M_FZwE4T-82bgHaHa?pid=ImgDet&rs=1',
                    errorUrl: 'https://www.google.com/',
                    userDefinedField: 'put order id here ',
                    invoiceAmount: 150,
                    customerReference: 'put customer_id here',
                    language: ApiLanguage.English,
                    token:
                    'rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL',
                  ),
                );
                log(response.status.toString());
                log('response: ${response.paymentId}');
              },
            ),
            MaterialButton(
              color: Theme.of(context).primaryColor,
              child: Text('Go To ListView Payment'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListViewPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
