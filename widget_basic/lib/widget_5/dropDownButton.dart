// 스테이풀위젯 쓰면 계속 오류 나던거 해결했던 방법 
// https://stackoverflow.com/questions/68449448/flutter-error-a-value-of-type-object-cant-be-assigned-to-a-variable-of-typ
// Center(
//       child: DropdownButton<String>(
//         value: _selectedValue,
//         items: _valueList.map((e) {
//           return DropdownMenuItem(value: e, child: Text(e));
//         }).toList(),
//         onChanged: (value) {
//           setState(() {
//             _selectedValue = value;
//           });
//         },
//       ),
//     )