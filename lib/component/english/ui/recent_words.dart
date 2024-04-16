import 'package:bapbi_app/widget/container_standard.dart';
import 'package:bapbi_app/widget/hoverable_cursor.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

final List<PlutoColumn> columns = <PlutoColumn>[
  PlutoColumn(
    title: 'Level',
    field: 'id',
    type: PlutoColumnType.text(),
  ),
  PlutoColumn(
    title: 'Word',
    field: 'word',
    type: PlutoColumnType.text(),
  ),
  PlutoColumn(
    title: 'Translated',
    field: 'translated',
    type: PlutoColumnType.text(),
  ),
  PlutoColumn(
    title: 'Date',
    field: 'date',
    type: PlutoColumnType.text(),
  ),
];

class TranslatedItem {
  final String word;
  final String level;
  final String translated;
  final String time;
  TranslatedItem(
      {required this.word,
      required this.level,
      required this.translated,
      required this.time});
}

final List<TranslatedItem> items = [
  TranslatedItem(
      word: 'Integrate',
      level: 'B2',
      translated: 'Tích hợp',
      time: '16/04, 18:03'),
  TranslatedItem(
      word: 'Achieve',
      level: 'C1',
      translated: 'Đạt được',
      time: '16/04, 18:15'),
  TranslatedItem(
      word: 'Remarkable',
      level: 'C2',
      translated: 'Đáng chú ý',
      time: '16/04, 18:25'),
  TranslatedItem(
      word: 'Establish',
      level: 'B1',
      translated: 'Thiết lập',
      time: '16/04, 18:35'),
  TranslatedItem(
      word: 'Participate',
      level: 'A2',
      translated: 'Tham gia',
      time: '16/04, 18:45'),
  TranslatedItem(
      word: 'Develop',
      level: 'B2',
      translated: 'Phát triển',
      time: '16/04, 18:55'),
  TranslatedItem(
      word: 'Monitor',
      level: 'B1',
      translated: 'Giám sát',
      time: '16/04, 19:05'),
  TranslatedItem(
      word: 'Assess',
      level: 'C1',
      translated: 'Đánh giá',
      time: '16/04, 19:15'),
  TranslatedItem(
      word: 'Enhance',
      level: 'C2',
      translated: 'Nâng cao',
      time: '16/04, 19:25'),
  TranslatedItem(
      word: 'Generate', level: 'A1', translated: 'Tạo ra', time: '16/04, 19:35')
];

class EnglishRecentWords extends StatelessWidget {
  const EnglishRecentWords({super.key});

  @override
  Widget build(BuildContext context) {
    late WordsDataSource dataSource = WordsDataSource(employeeData: items);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent words'.toUpperCase()),
        const SizedBox(
          height: 8.0,
        ),
        ContainerStandard(
          width: 800,
          height: 600,
          content: SfDataGrid(
            gridLinesVisibility: GridLinesVisibility.none,
            headerGridLinesVisibility: GridLinesVisibility.none,
            source: dataSource,
            columnWidthMode: ColumnWidthMode.fill,
            columns: <GridColumn>[
              GridColumn(
                  columnName: 'level',
                  label: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.outline),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Level',
                      ))),
              GridColumn(
                  columnName: 'word',
                  label: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.outline),
                        ),
                      ),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Text('Word'))),
              GridColumn(
                  columnName: 'translated',
                  label: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.outline),
                        ),
                      ),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Text(
                        'Translated',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'date',
                  label: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.outline),
                        ),
                      ),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Text('Date'))),
            ],
          ),
        )
      ],
    );
  }
}

class WordsDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  WordsDataSource({required List<TranslatedItem> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'level', value: e.level),
              DataGridCell<String>(columnName: 'word', value: e.word),
              DataGridCell<String>(
                  columnName: 'translated', value: e.translated),
              DataGridCell<String>(columnName: 'time', value: e.time),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return HoverableCursor(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          child: Text(e.value.toString()),
        ),
      );
    }).toList());
  }
}

class VocabularyLevelColors {
  // Define a map to hold the level colors
  static const Map<String, Color> _levelColors = {
    'A1': Color(0xFFADD8E6), // Light Blue
    'A2': Color(0xFF90EE90), // Green
    'B1': Color(0xFFFFD700), // Golden Yellow
    'B2': Color(0xFFFFA500), // Orange
    'C1': Color(0xFFFF6347), // Red
    'C2': Color(0xFF800080), // Purple
  };

  // Function to get color by level
  static Color getColor(String level) {
    return _levelColors[level] ??
        Colors.grey; // Returns grey if level is not found
  }
}
