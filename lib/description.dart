import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

String descText =
    "Shankle tenderloin corned beef turducken spare ribs pork belly. Rump ham hock meatball cow, bresaola doner tri-tip meatloaf andouille. Tail landjaeger porchetta shankle, jowl bacon ground round tenderloin. Pancetta ball tip swine, picanha beef ribs cow leberkas buffalo alcatra. Ground round alcatra tongue meatball swine jowl corned beef. Tail jerky salami, corned beef doner cupim prosciutto. Buffalo short loin shankle flank turducken. Bresaola salami ball tip, strip steak alcatra fatback beef pork short loin pork belly. Spare ribs ham pancetta short ribs drumstick tri-tip corned beef cow biltong burgdoggen shoulder. Jowl picanha ham pig shankle rump alcatra. Beef landjaeger burgdoggen cupim tri-tip meatball ground round tail filet mignon short loin t-bone strip steak cow. Pastrami tongue flank corned beef, bacon strip steak beef ribs pork capicola. Pork belly spare ribs picanha, tri-tip bresaola tenderloin kevin sausage biltong pancetta chuck boudin strip steak.";

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.title,
    required this.desImage,
  });

  final String title;
  final String desImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Description'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Lottie.asset(desImage),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              descText,
              style: const TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
          ]),
        ),
      ),
    );
  }
}
