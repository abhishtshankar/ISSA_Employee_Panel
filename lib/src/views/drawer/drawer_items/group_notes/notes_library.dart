import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';

class NotesLibrary extends StatefulWidget {
  const NotesLibrary({super.key});

  @override
  State<NotesLibrary> createState() => _NotesLibraryState();
}

class _NotesLibraryState extends State<NotesLibrary> {
  final List<Map<String, dynamic>> _libraryData = [
    {
      'topicName': 'Establishing Trust and Rapport',
      'noteSummary':
          'The staff presented the topic Building trust and rapport to resident and laid emphasis on how crucial it is to the various aspects of life, including personal relationships, business interactions, time in treatment and professional settings. Trust is the foundation upon which successful relationships are built, and rapport enhances communication and collaboration. Staff further highlighted the following as ways to establish trust and rapport:',
      'pointsToNote': [
        {
          'header': 'Active Listening',
          'description':
              '\n- Listen attentively to what others have to say without interrupting or judging. \n- Show empathy and understanding by reflecting their emotions and concerns.\n- Ask clarifying questions to ensure you grasp their perspective accurately.',
        },
        {
          'header': 'Authenticity',
          'description':
              '\n- Be genuine and sincere in your interactions. Authenticity is the cornerstone of trust.\n- Share your thoughts, feelings, and experiences honestly.\n- Avoid pretense or manipulation, as these erode trust.'
        },
        {
          'header': 'Reliability',
          'description':
              '\n- Consistently deliver on promises and commitments.\n- Set realistic expectations and meet or exceed them.\n- Communicate clearly if there are any delays or changes in plans.'
        },
        {
          'header': 'Transparency',
          'description':
              '\n- Be open and honest about your intentions, actions, and decisions.\n- Share information willingly and avoid hidden agendas.\n- Address concerns or doubts proactively.'
        },
        {
          'header': 'Consistency',
          'description':
              '\n- Establish consistent patterns of behavior and communication.\n- Avoid abrupt changes or unpredictability, which can undermine trust.'
        },
        {
          'header': 'Conflict Resolution',
          'description':
              '\n- Address conflicts or misunderstandings promptly and ructively.\n- Focus on finding mutually beneficial solutions rather than assigning blame.\n- Use "I" statements to express your feelings and concerns without accusing.'
        },
        {
          'header': 'Exercise Patience',
          'description':
              '\n- Building trust and rapport takes time; be patient and persistent.\n- Avoid rushing the process or pushing for immediate results.'
        },
      ],
      'conclusion':
          "In conclusion, staff posits that establishing trust and rapport requires a combination of interpersonal skills, consistent behavior, and a commitment to authenticity and empathy. It's an ongoing process that, when cultivated effectively, can lead to stronger and more productive relationships in various aspects of life.",
      'recommendations': [
        'Resident is encouraged to carryout the following for all round success in the course of recovery; Assessment key relationships or situations and Identify areas that need improvement.',
        'Resident is encouraged to Set clear goals for building trust and rapport and determine what specific outcomes you want to achieve.',
        'Resident is encouraged to develop a plan that includes actionable steps to achieve their goals.',
        'Resident is encouraged to seeking guidance from mentors or coaches who excel in building trust and rapport.',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('BHRF THERAPY'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'SESSION MANUAL',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  buildVSpacer(10),
                  const Text(
                    'BEHAVIORAL HEALTH RESIDENTIAL FACILITY',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  buildVSpacer(20),
                  for (int i = 0; i < _libraryData.length; i++)
                    Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            ('Topic ${i + 1}: ${_libraryData[i]['topicName'] as String}'),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          buildVSpacer(16),
                          const Text(
                            'NOTE SUMMARY:',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            _libraryData[i]['noteSummary'] as String,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),buildVSpacer(16),
                          for(int j=0; j<_libraryData[i]['pointsToNote'].length; j++)
                            Text(
                              ('${j+1}. ${_libraryData[i]['pointsToNote'][j]['header'] as String}: ${ _libraryData[i]['pointsToNote'][j]['description']}\n\n'),
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ), buildVSpacer(16),
                            Text(
                              (_libraryData[i]['conclusion'] as String),
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ), buildVSpacer(16),
                            const Text(
                            'PLAN/ RECOMMENDATION:',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),buildVSpacer(16),
                          for(int k=0; k<_libraryData[i]['recommendations'].length; k++)
                          Text(
                            ('${k+1}. ${_libraryData[i]['recommendations'][k] as String}\n'),
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ), buildVSpacer(50),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 18,
                ),
                height: 43,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'SUBMIT',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

