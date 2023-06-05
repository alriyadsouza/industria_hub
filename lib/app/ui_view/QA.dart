import 'package:flutter/material.dart';

class QAPage extends StatefulWidget {
  @override
  _QAPageState createState() => _QAPageState();
}

class _QAPageState extends State<QAPage> {
  final List<Map<String, String>> questionsAndAnswers = [
    {
      'question': 'Q1: What is desalination?',
      'answer': 'Desalination is a process that removes salt and other impurities from seawater, brackish water, or contaminated water to produce fresh, drinkable water.',
    },
    {
      'question': 'Q2: Why is desalination necessary?',
      'answer': 'Desalination is necessary in areas where freshwater resources are scarce or insufficient to meet the growing demand for clean water. It provides an alternative source of freshwater by converting seawater or brackish water into potable water.',
    },
    {
      'question': 'Q3: What are the methods of desalination?',
      'answer': 'The two primary methods of desalination are reverse osmosis (RO) and thermal distillation. Reverse osmosis uses a semipermeable membrane to separate salts from water, while thermal distillation involves heating water to create steam and condensing it to produce freshwater.',
    },
    {
      'question': 'Q4: Where is desalination commonly used?',
      'answer': 'Desalination plants are commonly found in regions with limited freshwater resources, such as coastal areas, arid regions, and islands. Countries like Saudi Arabia, the United Arab Emirates, Israel, Australia, and the United States have extensive desalination facilities.',
    },
    {
      'question': 'Q5: What are the environmental impacts of desalination?',
      'answer': 'Desalination can have several environmental impacts, such as the intake and discharge of large volumes of seawater, which may harm marine organisms. It also requires significant amounts of energy, often derived from fossil fuels, contributing to greenhouse gas emissions. The disposal of concentrated brine byproduct can also harm marine ecosystems if not properly managed.',
    },
    {
      'question': 'Q6: Is desalinated water safe to drink?',
      'answer': 'Yes, desalinated water is safe to drink after undergoing the desalination process. The removal of salts and impurities ensures that the water meets drinking water standards. However, the quality of the desalinated water depends on the specific desalination process and the treatment methods used.',
    },
    {
      'question': 'Q7: Is desalination cost-effective?',
      'answer': 'The cost-effectiveness of desalination varies depending on several factors, including energy costs, plant size, location, and the availability of alternative water sources. Desalination can be expensive compared to traditional freshwater sources, but in water-stressed regions, it can be a necessary and economically viable solution.',
    },
  ];

  int selectedQuestionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Q&A Page'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: questionsAndAnswers.length,
        itemBuilder: (context, index) {
          final question = questionsAndAnswers[index]['question'];
          final answer = questionsAndAnswers[index]['answer'];
          final isSelected = selectedQuestionIndex == index;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedQuestionIndex = isSelected ? -1 : index;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: isSelected ? Colors.pink.shade100 : Colors.blue.shade100,
                ),
                child: ListTile(
                  title: Text(
                    question!,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: AnimatedCrossFade(
                    firstChild: Icon(Icons.arrow_drop_down),
                    secondChild: Icon(Icons.arrow_drop_up),
                    crossFadeState: isSelected
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: Duration(milliseconds: 300),
                  ),
                  subtitle: AnimatedSize(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: isSelected
                        ? Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        answer!,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    )
                        : SizedBox.shrink(),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
