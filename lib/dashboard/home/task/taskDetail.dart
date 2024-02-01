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
        backgroundColor: MyColor.white,
        leading: Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(12),
          color: MyColor.grey,
          child: const Center(
              child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
          )),
        ),
        title: const Text(
          'TASK DETAILS',
          style: MyStyle.tx16b,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last week Update',
              style: MyStyle.tx20b.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              height: 121,
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: MyColor.grey,
                  width: 4,
                ),
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
              height: 57,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              color: MyColor.black,
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/like.png',
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    ' Your task is Completed.',
                    style: MyStyle.tx14w.copyWith(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Date',
              style: MyStyle.tx12b.copyWith(
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins-Medium',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text('18, Dec 2021', style: MyStyle.tx20b),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Assigned by:',
              style: MyStyle.tx12b.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'ASM (Area Sales Manager)',
              style: MyStyle.tx14b.copyWith(
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins-Bold',
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Note:',
              style: MyStyle.tx12b.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              height: 87,
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
          ],
        ),
      ),
    );
  }
}
