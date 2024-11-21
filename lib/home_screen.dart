import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // รูปภาพของสิงโต
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/020_The_lion_king_Snyggve_in_the_Serengeti_National_Park_Photo_by_Giles_Laurent.jpg/220px-020_The_lion_king_Snyggve_in_the_Serengeti_National_Park_Photo_by_Giles_Laurent.jpg',
              fit: BoxFit.cover,
              height: 250,
            ),
            const SizedBox(height: 16), // ช่องว่างระหว่างรูปภาพและข้อความ

            // หัวข้อข้อมูลเกี่ยวกับสิงโต
            const Text(
              'The Lion (Panthera leo)',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8), // ช่องว่างระหว่างหัวข้อและเนื้อหา

            // ข้อความข้อมูลของสิงโต
            const Text(
              'The lion (Panthera leo) is a large cat of the genus Panthera, native to Africa and India. It has a muscular, broad-chested body; a short, rounded head; round ears; and a dark, hairy tuft at the tip of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane. '
                  'It is a social species, forming groups called prides. A lion\'s pride consists of a few adult males, related females, and cubs. Groups of female lions usually hunt together, preying mostly on medium-sized and large ungulates. '
                  'The lion is an apex and keystone predator; although some lions scavenge when opportunities occur and have been known to hunt humans, lions typically do not actively seek out and prey on humans.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20), // ช่องว่างระหว่างเนื้อหากับเนื้อหาถัดไป

            // รูปภาพของแมว
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Cat_August_2010-4.jpg/181px-Cat_August_2010-4.jpg',
              fit: BoxFit.cover,
              height: 250,
            ),
            const SizedBox(height: 16), // ช่องว่างระหว่างรูปภาพและข้อความ

            // หัวข้อข้อมูลเกี่ยวกับแมว
            const Text(
              'The Cat (Felis catus)',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8), // ช่องว่างระหว่างหัวข้อและเนื้อหา

            // ข้อความข้อมูลของแมว
            const Text(
              'The cat (Felis catus), also referred to as domestic cat or house cat, is a small domesticated carnivorous mammal. It is the only domesticated species of the family Felidae. Advances in archaeology and genetics have shown that the domestication of the cat occurred in the Near East around 7500 BC. '
                  'It is commonly kept as a pet and farm cat, but also ranges freely as a feral cat avoiding human contact. Valued by humans for companionship and its ability to kill vermin, the cat\'s retractable claws are adapted to killing small prey like mice and rats. '
                  'It has a strong, flexible body and a keen sense of hearing, sight, and smell, making it an excellent predator.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 20), // ช่องว่างระหว่างเนื้อหากับปุ่ม

            // ปุ่ม "Back" หรือปุ่มกลับ
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
