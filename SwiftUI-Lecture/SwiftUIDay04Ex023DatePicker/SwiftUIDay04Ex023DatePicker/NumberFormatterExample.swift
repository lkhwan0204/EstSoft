import SwiftUI

struct NumberFormatterExample: View {
    @State private var number: Double = 0.0
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()

    var body: some View {
        VStack {
            Text("입력한 숫자: \(number, specifier: "%.2f")")
            TextField("숫자 입력", value: $number, formatter: formatter)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()
        }
    }
}

#Preview {
    NumberFormatterExample()
}
