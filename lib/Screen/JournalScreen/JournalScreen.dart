import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class JournalScreen extends StatefulWidget {
  const JournalScreen({Key? key}) : super(key: key);

  @override
  State<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  late DateTime _selectedDay;
  late DateTime _focusedDay;
  late Map<DateTime, List<String>> journalEntries;
  late List<DateTime> _weekDates;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
    _weekDates = _getWeekDates(_focusedDay);
    journalEntries = {}; // Initialize journal entries map
  }

  List<DateTime> _getWeekDates(DateTime date) {
    DateTime startOfWeek = date.subtract(Duration(days: date.weekday - 1));
    return List.generate(7, (index) => startOfWeek.add(Duration(days: index)));
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
      _weekDates = _getWeekDates(focusedDay);
    });
  }

  Future<void> _displayAddJournalEntryDialog(BuildContext context) async {
    TextEditingController journalEntryController = TextEditingController();

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'New Journal Entry - ${DateFormat('EEE, MMM d').format(_selectedDay)}',
            style: GoogleFonts.epilogue(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: TextField(
            controller: journalEntryController,
            maxLines: 5,
            decoration: InputDecoration(
              hintText: "Type your thoughts here...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.w),
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Cancel',
                style: GoogleFonts.epilogue(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text(
                'Add',
                style: GoogleFonts.epilogue(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFED0B2),
              ),
              onPressed: () {
                setState(() {
                  if (journalEntryController.text.isNotEmpty) {
                    if (journalEntries[_selectedDay] == null) {
                      journalEntries[_selectedDay] = [];
                    }
                    journalEntries[_selectedDay]!.add(journalEntryController.text);
                  }
                });
                Navigator.of(context).pop();
                CollectionReference collRef = FirebaseFirestore.instance.collection('user');
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: const Color(0xFFFED0B2),
        appBar: AppBar(
        title: Text('Journal'),
         backgroundColor:   Color(0xffDE6060),
        
      ),
        body: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: Image.asset(
                      'assets/journal.png',
                      width: 25.w, // Adjust width as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: Text(
                      "Weekly Journal",
                      style: TextStyle(
                        fontSize: 27.sp,
                        fontWeight: FontWeight.bold,
                        color:  Color(0xffDE6060),
                      ),
                    ),
                  ),
                ]
              ),
              SizedBox(height: 7.h),

              // Calendar Container
              Container(
                height: 10.h,
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _weekDates.length,
                  itemBuilder: (context, index) {
                    DateTime day = _weekDates[index];
                    bool isSelected = isSameDay(day, _selectedDay);
                    return GestureDetector(
                      onTap: () => _onDaySelected(day, day),
                      child: Container(
                        width: 10.w,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.grey.shade600 : Colors.white,
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Text(
                          DateFormat('EEE\nd').format(day),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.epilogue(
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 2.h), // Adjust height as needed

              // Display journal entries for selected day
              if (journalEntries.containsKey(_selectedDay))
                Expanded(
                  child: ListView.builder(
                    itemCount: journalEntries[_selectedDay]!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 3,
                        margin: EdgeInsets.symmetric(vertical: 1.h),
                        child: Padding(
                          padding: EdgeInsets.all(2.w),
                          child: Text(
                            journalEntries[_selectedDay]![index],
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

              SizedBox(height: 2.h),

              // Add Journal Entry Button
              Align(
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                  onPressed: () {
                    _displayAddJournalEntryDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                  ),
                  child: Text(
                    "Add Journal Entry",
                    style: GoogleFonts.epilogue(
                      color: Colors.grey.shade700,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
