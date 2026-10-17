import 'package:flutter/material.dart';

import '../../../../../Widgets/ButtonWidget.dart';
import '../../../../../Widgets/TextFieldWidget.dart';
import '../../../../../core/Themes/AppColors.dart';
import '../../../../../core/gen/assets.gen.dart';

class Assessment extends StatefulWidget {
  const Assessment({super.key});

  State<Assessment> createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  TextEditingController ageController = TextEditingController();

  TextEditingController yearController = TextEditingController();

  TextEditingController nodesController = TextEditingController();

  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 37,
                        width: 37,
                        decoration: BoxDecoration(
                          color: AppColors.lightBlue,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(
                          child: Text(
                            "SK",
                            style: theme.titleLarge?.copyWith(
                              color: AppColors.blue,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        spacing: 4,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Sarah Karim",
                            style: theme.titleLarge?.copyWith(
                              color: AppColors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: AppColors.green,
                              ),
                              SizedBox(width: 3.5),
                              Text(
                                "Hospital 1 · Active",
                                style: theme.titleSmall?.copyWith(
                                  color: AppColors.green,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    spacing: 4,
                    children: [
                      Assets.icons.slidersHorizontal.svg(
                        height: 20,
                        width: 20,
                        color: AppColors.darkgrey,
                      ),
                      Text(
                        "Quick Settings",
                        style: theme.titleSmall?.copyWith(
                          color: AppColors.darkgrey,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Patient assessment",
                      style: theme.titleLarge?.copyWith(color: AppColors.black),
                    ),
                    SizedBox(height: 7),

                    Text(
                      "Haberman · FedAvg global model",
                      style: theme.titleSmall?.copyWith(
                        color: AppColors.darkgrey,
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 10,
                        ),
                        child: Row(
                          spacing: 8,
                          children: [
                            Assets.icons.flaskConical.svg(
                              height: 14,
                              width: 14,
                              colorFilter: ColorFilter.mode(
                                AppColors.blue,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "Demo record · No real patient information",
                              style: theme.titleMedium?.copyWith(
                                color: AppColors.blue,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 16),

                    Column(
                      spacing: 16,
                      children: [
                        TextFieldWidget(
                          title: "Enter Age",
                          controller: ageController,
                        ),
                        TextFieldWidget(
                          title: "Enter Year",
                          controller: yearController,
                        ),
                        TextFieldWidget(
                          title: "Enter Nodes",
                          controller: nodesController,
                        ),

                        GestureDetector(
                          onTap: () {},
                          child: ButtonWidget(title: "Run Prediction Model"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
