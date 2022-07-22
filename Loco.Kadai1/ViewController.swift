import UIKit
//初期化
//222
// main2をブランチ

// mainに戻った

// もう一度試す



class ViewController: UIViewController {
    @IBOutlet private weak var firstField: UITextField!
    @IBOutlet private weak var secondField: UITextField!
    @IBOutlet private weak var thirdField: UITextField!
    @IBOutlet private weak var fourthField: UITextField!
    @IBOutlet private weak var fifthField: UITextField!
    @IBOutlet private weak var calculationButton: UIButton!
    @IBOutlet private weak var displayNum: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupKeyboardType()
    }

    // キーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        firstField.resignFirstResponder()
        secondField.resignFirstResponder()
        thirdField.resignFirstResponder()
        fourthField.resignFirstResponder()
        fifthField.resignFirstResponder()
    }
    // キーボード数字表示のみ
   private func setupKeyboardType() {
        firstField.keyboardType = .numberPad
        secondField.keyboardType = .numberPad
        thirdField.keyboardType = .numberPad
        fourthField.keyboardType = .numberPad
        fifthField.keyboardType = .numberPad
    }
    // 計算式
   private func calculateAndDisplay () {
        let firstFieldNum = Int(firstField.text!) ?? 0
        let secondFieldNum = Int(secondField.text!) ?? 0
        let thirdFieldNum = Int(thirdField.text!) ?? 0
        let fourthFieldNum = Int(fourthField.text!) ?? 0
        let fifthFieldNum = Int(fifthField.text!) ?? 0

        let sumResult = firstFieldNum + secondFieldNum + thirdFieldNum + fourthFieldNum + fifthFieldNum

        displayNum.text = String(sumResult)
    }

    @IBAction private func calculationButton(_ sender: Any) {
        calculateAndDisplay()
    }
}
