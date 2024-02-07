import 'package:flutter/material.dart';

import '../../../values/myColor.dart';
import '../../../values/myStyle.dart';

class TaskDetail extends StatefulWidget {
  const TaskDetail({super.key});

  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.white,
        leading: Container(
          margin: const EdgeInsets.fromLTRB(15, 10, 0, 10),
          color: MyColor.grey,
          child: const Center(
              child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
          )),
        ),
        leadingWidth: 50,
        title: const Text(
          'TASK DETAILS',
          style: MyStyle.tx16b,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                'Last week Update',
                style: MyStyle.tx20b.copyWith(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-SemiBold',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                // height: 121,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14),
                margin: const EdgeInsets.only(bottom: 18),
                decoration: BoxDecoration(
                  color: MyColor.white,
                  border: const Border(
                    left: BorderSide(color: MyColor.grey),
                    right: BorderSide(color: MyColor.grey),
                    top: BorderSide(color: MyColor.grey),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: MyColor.black.withOpacity(0.1),
                      blurRadius: 4,
                      spreadRadius: 0.01,
                      offset: const Offset(1, 4),
                    ),
                  ],
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. '
                  'Porta in enim lorem nibh interdum diam fermentum tellus.'
                  ' Orci blandit pellentesque neque pulvinar tempus nec vestibulum. '
                  'Praesent sed ultrices magna orci et nulla nulla feugiat. ',
                  style: MyStyle.tx12b.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 12),
                color: MyColor.black,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/like.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      ' Your task is Completed.',
                      style: MyStyle.tx14w.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Date',
                style: MyStyle.tx12b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins-Medium',
                ),
              ),
              Text('18, Dec 2021',
                  style: MyStyle.tx20b.copyWith(
                    fontSize: 19,
                    fontFamily: 'Poppins-Bold',
                  )),
              const SizedBox(
                height: 13,
              ),
              Text(
                'Assigned by:',
                style: MyStyle.tx12b.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'ASM (Area Sales Manager)',
                style: MyStyle.tx14b.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-Bold',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Note:',
                style: MyStyle.tx12b.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.5,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: MyColor.grey,
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet . '
                  'Neque arcu  et tristique orci risus. '
                  'Arcu consectetur vitae augue vitae velit '
                  'blandit semper nulla. Egestas.',
                  style: MyStyle.tx12b.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Attachment',
                style: MyStyle.tx12b.copyWith(
                  fontSize: 11.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 110,
                width: 110,
                color: MyColor.grey,
                // padding:
                //     const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Center(
                  child: Image.asset(
                    'assets/icons/pdf.png',
                    height: 36,
                    width: 36,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 50,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          width: MediaQuery.of(context).size.width,
          color: MyColor.black,
          child: Center(
            child: Text(
              'Done',
              style: MyStyle.tx20W
                  .copyWith(fontFamily: 'Poppins-SemiBold', fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
