import 'package:flutter/material.dart';
import 'package:ui_app/models/faq.dart';

class FrequentScreen extends StatefulWidget {
  const FrequentScreen({Key? key}) : super(key: key);

  @override
  State<FrequentScreen> createState() => _FrequentScreenState();
}

class _FrequentScreenState extends State<FrequentScreen> {
  final List<Faqs> _faqs = <Faqs>[
    Faqs(question: 'question #1', answer: "answer #1"),
    Faqs(question: 'question #2', answer: "answer #2"),
    Faqs(question: 'question #3', answer: "answer #3"),
    Faqs(question: 'question #4', answer: "answer #4"),
    Faqs(question: 'question #5', answer: "answer #5"),
    Faqs(question: 'question #6', answer: "answer #6"),
    Faqs(question: 'question #7', answer: "answer #7"),
    Faqs(question: 'question #8', answer: "answer #8"),
    Faqs(question: 'question #9', answer: "answer #9"),
    Faqs(question: 'question #10', answer: "answer #10"),
    Faqs(question: 'question #11', answer: "answer #11"),
    Faqs(question: 'question #12', answer: "answer #12"),
    Faqs(question: 'question #13', answer: "answer #13"),
    Faqs(question: 'question #14', answer: "answer #14"),
    Faqs(question: 'question #1', answer: "answer #1"),
    Faqs(question: 'question #2', answer: "answer #2"),
    Faqs(question: 'question #3', answer: "answer #3"),
    Faqs(question: 'question #4', answer: "answer #4"),
    Faqs(question: 'question #5', answer: "answer #5"),
    Faqs(question: 'question #6', answer: "answer #6"),
    Faqs(question: 'question #7', answer: "answer #7"),
    Faqs(question: 'question #8', answer: "answer #8"),
    Faqs(question: 'question #9', answer: "answer #9"),
    Faqs(question: 'question #10', answer: "answer #10"),
    Faqs(question: 'question #11', answer: "answer #11"),
    Faqs(question: 'question #12', answer: "answer #12"),
    Faqs(question: 'question #13', answer: "answer #13"),
    Faqs(question: 'question #14', answer: "answer #14"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frequent'),
      ),
      body: ListView.builder(
        itemCount: _faqs.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            leading: const Icon(Icons.message_outlined),
            backgroundColor: Colors.grey.shade300,
              // tilePadding: EdgeInsets.zero,
              collapsedBackgroundColor: Colors.black45,
              childrenPadding: const EdgeInsets.all(0),
              expandedAlignment: Alignment.center,
              collapsedIconColor: Colors.black,
              collapsedTextColor: Colors.white,
              textColor: Colors.orange,

              onExpansionChanged: (bool value){},
              title: Text(
            _faqs[index].question,
              ),
          children: [
            Container(padding: const EdgeInsets.all(10),alignment: AlignmentDirectional.centerStart,height: 50,width: double.infinity,color: Colors.black45,child: Text(_faqs[index].answer))
          ],);
        },
      ),
    );
  }
}
