import UIKit

class ViewController: UIViewController {
    //Conectarmos elementos para acesso de propriedades
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //Esse é o modo de declararmos imagens dentro de um array em swift
    let diceImages:Array = [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix"),
    ]

    @IBAction func typedRollButton(_ sender: UIButton) {
        //Aqui estamos gerando um número aleatório de 0 a 5 para representar cada imagem do array
        diceImageView1.image = diceImages[Int.random(in: 0...5)]
        diceImageView2.image = diceImages[Int.random(in: 0...5)]
    }
}

