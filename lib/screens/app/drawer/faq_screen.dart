import 'package:flutter/material.dart';
import 'package:ui_app/models/faq.dart';
class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {

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
      appBar: AppBar(title: const Text('FAQS'),),
      body: ListView(
        children: [
          ExpansionPanelList(
            dividerColor: Colors.grey,
             expansionCallback:(panelIndex,isExpanded){
             setState(() {
               _faqs[panelIndex].isExpanded =!isExpanded;
             });
             } ,
            children : _faqs.map((e) {
              return ExpansionPanel(
                canTapOnHeader: true,

                  backgroundColor: Colors.grey,
                  isExpanded: e.isExpanded,
                  headerBuilder: (context,isExpanded){
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Icon(Icons.message_outlined),
                      const SizedBox(width: 10,),
                      Text(e.question),
                    ],
                  ),
                );
              }, body: Container(
                padding: const EdgeInsets.all(10),
                alignment: AlignmentDirectional.centerStart,
                  color: Colors.grey.shade300,
                  height: 50,
                  width: double.infinity,
                  child: Text(e.answer)));
            }).toList(),
          )
        ],
      ),
    );
  }
}
