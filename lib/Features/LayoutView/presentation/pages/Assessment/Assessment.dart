import 'package:fedhealth_graduationproject/Features/LayoutView/data%20layer/Models/PredectionRequestModel.dart';
import 'package:fedhealth_graduationproject/Features/LayoutView/data%20layer/Models/PredectionResponseModel.dart';
import 'package:fedhealth_graduationproject/Features/LayoutView/presentation/manager/AssessmentBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../Widgets/ButtonWidget.dart';
import '../../../../../Widgets/TextFieldWidget.dart';
import '../../../../../core/Themes/AppColors.dart';
import '../../../../../core/gen/assets.gen.dart';

class Assessment extends StatefulWidget {
  const Assessment({super.key});

  State<Assessment> createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {

  PredectionResponseModel ? predection;



  TextEditingController ageController = TextEditingController();

  TextEditingController yearController = TextEditingController();

  TextEditingController nodesController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return BlocProvider<AssessmentBloc>(
      create: (context) => AssessmentBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 16),
                child: SingleChildScrollView(
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
                              style: theme.titleLarge?.copyWith(
                                  color: AppColors.black),
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

                                Form(
                                  key: _formKey,
                                  child: Column(
                                    spacing: 16,
                                    children: [
                                      TextFieldWidget(
                                        title: "Enter Age",
                                        controller: ageController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please Enter Age";
                                          }
                                          else if (int.parse(value) <= 0 ||
                                              int.parse(value) > 120) {
                                            return "Please Enter Valid Age , from 1 to 120";
                                          }
                                          else {
                                            return null;
                                          }
                                        },
                                      ),
                                      TextFieldWidget(
                                        title: "Enter Year",
                                        controller: yearController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please Enter Year";
                                          }
                                          else if (!RegExp(r'^\d{4}$').hasMatch(
                                              value)) {
                                            return "Please Enter Valid Year";
                                          }
                                          else if (int.parse(value) <= 0) {
                                            return "Please Enter Valid Year";
                                          }
                                          else {
                                            return null;
                                          }
                                        },
                                      ),
                                      TextFieldWidget(
                                        title: "Enter Nodes",
                                        controller: nodesController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please Enter Nodes";
                                          }
                                          else if (int.parse(value) < 0) {
                                            return "Please Enter Positive Number or 0";
                                          }
                                          else {
                                            return null;
                                          }
                                        },
                                      ),

                                    ],
                                  ),
                                ),


                                Bounceable(
                                  onTap: () {
                                    if (_formKey.currentState!.validate()) {
                                      final request = PredectionRequestModel(
                                          year: yearController.text,
                                          nodes: nodesController.text,
                                          age: ageController.text);
                                      context.read<AssessmentBloc>().add(
                                          getPrediction(request));
                                    }
                                  },
                                  child: ButtonWidget(
                                      title: "Run Prediction Model"),
                                ),


                                BlocBuilder<AssessmentBloc, AssessmentState>(
                                    builder: (context, state) {
                                      if (state is LoadingState) {
                                        return Skeletonizer(
                                            effect: const ShimmerEffect(
                                                baseColor: AppColors.lightgrey

                                            ),
                                            child: Bone(
                                              width: double.infinity,
                                              height: 156,
                                              borderRadius: BorderRadius
                                                  .circular(16),


                                            ));
                                      }

                                      if (state is SuccessState) {
                                        final data = state.predection
                                            .predectionDataList
                                            .isNotEmpty == true ? state
                                            .predection
                                            .predectionDataList.first : null;

                                        if (data == null) {
                                          return Text(
                                              "No Prediction data Available");
                                        }

                                        return Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(
                                                16),
                                            border: Border.all(
                                                color: AppColors.lightgrey,
                                                width: 1),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Column(
                                              children: [
                                                Row(
                                                  spacing: 8,
                                                  children: [
                                                    Assets.icons.activity.svg(
                                                        colorFilter: ColorFilter
                                                            .mode(
                                                            AppColors.blue,
                                                            BlendMode.srcIn)),
                                                    Text(
                                                      "5-Year Survival Outcome",
                                                      style: theme.titleLarge
                                                          ?.copyWith(
                                                          color: AppColors
                                                              .black,
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          fontSize: 12),)
                                                  ],
                                                ),
                                                SizedBox(height: 13),

                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Column(
                                                      spacing: 8,
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Container(
                                                          width: 85, height: 25,
                                                          decoration: BoxDecoration(
                                                            color: AppColors
                                                                .lightgreen,
                                                            borderRadius: BorderRadius
                                                                .circular(100),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 10,
                                                                vertical: 5),
                                                            child: Row(
                                                              spacing: 5,
                                                              children: [
                                                                Assets.icons
                                                                    .check
                                                                    .svg(),
                                                                data?.outcome ==
                                                                    "positive"
                                                                    ? Text(
                                                                  "Positive",
                                                                  style: theme
                                                                      .titleLarge
                                                                      ?.copyWith(
                                                                      color: AppColors
                                                                          .green,
                                                                      fontSize: 12,
                                                                      fontWeight: FontWeight
                                                                          .w600),)
                                                                    :
                                                                Text("negative",
                                                                  style: theme
                                                                      .titleLarge
                                                                      ?.copyWith(
                                                                      color: Colors
                                                                          .red,
                                                                      fontSize: 12,
                                                                      fontWeight: FontWeight
                                                                          .w600),)

                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "Negative: not selected",
                                                          style: theme
                                                              .titleSmall
                                                              ?.copyWith(
                                                              color: AppColors
                                                                  .darkgrey,
                                                              fontSize: 10,
                                                              fontWeight: FontWeight
                                                                  .w400),)

                                                      ],
                                                    ),
                                                    Column(
                                                      spacing: 7,
                                                      children: [
                                                        Text("${((data
                                                            ?.confidence ??
                                                            0) * 100)
                                                            .toStringAsFixed(
                                                            1)} %",
                                                          style: theme
                                                              .titleLarge
                                                              ?.copyWith(
                                                              color: AppColors
                                                                  .blue,
                                                              fontSize: 29,
                                                              fontWeight: FontWeight
                                                                  .w700),),
                                                        Text(
                                                          "Illustrative confidence",
                                                          style: theme
                                                              .titleSmall
                                                              ?.copyWith(
                                                              color: AppColors
                                                                  .darkgrey,
                                                              fontSize: 10,
                                                              fontWeight: FontWeight
                                                                  .w400),)

                                                      ],)
                                                  ],
                                                ),

                                                const SizedBox(height: 16),
                                                ClipRRect(
                                                  borderRadius: BorderRadius
                                                      .circular(
                                                      8),
                                                  child: LinearProgressIndicator(
                                                    value: data?.confidence ??
                                                        0,
                                                    backgroundColor: AppColors
                                                        .lightgrey,
                                                    valueColor: AlwaysStoppedAnimation<
                                                        Color>(
                                                        AppColors.blue),
                                                    minHeight: 8,
                                                  ),
                                                ),

                                                SizedBox(height: 16,),
                                                Text(
                                                  "Positive = modeled survival ≥5 years, not a cancer-positive diagnosis.",
                                                  style: theme.titleSmall
                                                      ?.copyWith(
                                                      color: AppColors.darkgrey,
                                                      fontSize: 10,
                                                      fontWeight: FontWeight
                                                          .w400),
                                                  textAlign: TextAlign.center,)

                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                      if (state is ErrorState) {
                                        return Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius
                                                  .circular(16),
                                              border: Border.all(
                                                  color: AppColors.lightgrey,
                                                  width: 1),

                                            ),
                                            child: Center(
                                              child: Column(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .center,
                                                  children: [
                                                    Icon(
                                                      Icons.error_outline,
                                                      size: 50,
                                                      color: Colors.red,),
                                                    SizedBox(height: 10,),
                                                    Text("Something Went Wrong",
                                                        style: theme.titleMedium
                                                            ?.copyWith(
                                                            color: Colors.red,
                                                            fontSize: 18)),

                                                  ]
                                              ),
                                            )
                                        );
                                      }
                                      return const SizedBox.shrink();
                                    }
                                ),

                              ],
                            ),
                            SizedBox(height: 16,),

                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.lightgrey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  spacing: 8,
                                  children: [
                                    Assets.icons.info.svg(
                                        colorFilter: ColorFilter.mode(
                                            AppColors.darkgrey,
                                            BlendMode.srcIn)),
                                    SizedBox(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * 0.7,
                                        child: Text(
                                          "Research only. Illustrative demo data, not for clinical decision support.",
                                          style: theme.titleSmall?.copyWith(
                                              color: AppColors.darkgrey,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.start,))

                                  ],),
                              ),
                            ),

                          ],
                        ),
                      ),


                    ],
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
