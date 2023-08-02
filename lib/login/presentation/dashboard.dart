import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/login/bloc/dashboard/dashboard_bloc.dart';
import 'package:doconline_hospital/login/data/model/dashboardmodel.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:doconline_hospital/login/presentation/widgets/dashboard.dart';
import 'package:doconline_hospital/login/presentation/widgets/drawer.dart';
import 'package:doconline_hospital/login/presentation/widgets/logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DashboardBloc>(context)
        .add(const DashboardEvent.getDashBoard());
    return Scaffold(
        drawer: SafeArea(child: homeDrawer(context, 'dasboard')),
        body: SafeArea(
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              switch (state.dashBoardData.status) {
                case ResponseStatus.error:
                  return netWorkError();
                case ResponseStatus.loading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case ResponseStatus.complete:
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 70,
                                width: double.infinity,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              Positioned(
                                  top: 10,
                                  child: IconButton(
                                    onPressed: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                    icon: const Icon(
                                      Icons.menu,
                                      size: 40,
                                    ),
                                  )),
                              Positioned(
                                right: 15,
                                child: logo(),
                              ),
                            ],
                          ),
                          header1('Dashboard'),
                          dashBoard(
                              'Total Booking',
                              state.dashBoardData.data!.booking!.totalBooking!,
                              Icons.note_alt_outlined,
                              false),
                          space1h(),
                          dashBoard(
                              'Total Revenue',
                              state.dashBoardData.data!.booking!.totalRevenue!,
                              Icons.currency_rupee,
                              false),
                          space1h(),
                          dashBoard(
                              'Total Doctors',
                              state.dashBoardData.data!.totalDoctors!,
                              Icons.medical_information,
                              false),
                          space1h(),
                          header1('Analysis'),
                          barGraph(state.dashBoardData.data!),
                        ],
                      ),
                    ),
                  );
                default:
                  return const SizedBox();
              }
            },
          ),
        ));
  }

  barGraph(DashBoardModel state) {
    return Builder(builder: (context) {
      final chart = createChartList(state);
      return Container(
        width: double.infinity,
        height: 400,
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 50, // Adjust the width of the bar chart as needed
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(
                labelRotation: 90,
                desiredIntervals: 12,
                labelPlacement: LabelPlacement.onTicks,
                title: AxisTitle(text: 'Month', alignment: ChartAlignment.far)),
            primaryYAxis: NumericAxis(title: AxisTitle(text: 'Income')),
            series: <ChartSeries>[
              ColumnSeries<ChartData, String>(
                dataSource: chart,
                xValueMapper: (ChartData data, _) => data.category,
                yValueMapper: (ChartData data, _) => data.value,
              ),
            ],
          ),
        ),
      );
    });
  }
}

class ChartData {
  final String category;
  final int value;

  ChartData(this.category, this.value);
}

createChartList(DashBoardModel state) {
  List<ChartData> chart = [];
  List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'April',
    'May',
    'June',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  chart.add(ChartData('', 0));
  for (var i = 0; i < state.monthlyData!.length; i++) {
    chart.add(ChartData(months[i], state.monthlyData![i]));
  }
  return chart;
}
