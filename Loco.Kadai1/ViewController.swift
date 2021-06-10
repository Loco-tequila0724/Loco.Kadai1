import UIKit

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

        numberPadKeyboardType()
    }

//    キーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        firstField.resignFirstResponder()
        secondField.resignFirstResponder()
        thirdField.resignFirstResponder()
        fourthField.resignFirstResponder()
        fifthField.resignFirstResponder()
    }
//　　　キーボード数字表示のみ
    func numberPadKeyboardType() {
        firstField.keyboardType = UIKeyboardType.numberPad
        secondField.keyboardType = UIKeyboardType.numberPad
        thirdField.keyboardType = UIKeyboardType.numberPad
        fourthField.keyboardType = UIKeyboardType.numberPad
        fifthField.keyboardType = UIKeyboardType.numberPad
    }
//  　　計算式
    func calculationMethod () {
        let firstFieldNum = Int(firstField.text!) ?? 0
        let secondFieldNum = Int(secondField.text!) ?? 0
        let thirdFieldNum = Int(thirdField.text!) ?? 0
        let fourthFieldNum = Int(fourthField.text!) ?? 0
        let fifthFieldNum = Int(fifthField.text!) ?? 0

        let sumResult = firstFieldNum + secondFieldNum + thirdFieldNum + fourthFieldNum + fifthFieldNum

        displayNum.text = String(sumResult)
    }

    @IBAction private func calculationButton(_ sender: Any) {
        calculationMethod()
    }
}
