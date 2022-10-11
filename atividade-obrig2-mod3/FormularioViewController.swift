//
//  FormularioViewController.swift
//  atividade-obrig2-mod3
//
//  Created by Noelle Figueiredo on 11/10/22.
//

import UIKit

class FormularioViewController: UIViewController {
    
    @IBOutlet weak var fieldNome: UITextField!
    @IBOutlet weak var fieldEmail: UITextField!
    @IBOutlet weak var fieldAtuacao: UITextField!
    @IBOutlet weak var fieldStatus: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func apresentarAlertaRevisao(){
        let alert = UIAlertController(
            title: "Quase lá!",
            message: "Antes de enviarmos, por favor revise seus dados:\n\nNome: \(fieldNome.text!)\nEmail: \(fieldEmail.text!)\nÁrea de Atuação: \(fieldAtuacao.text!)\nStatus Profissional: \(fieldStatus.text!)\n",
            preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: apresentarAlertaConfirmacao(action:)))
        alert.addAction(UIAlertAction(title: "Alterar dados", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
        
    }
    

    func apresentarAlertaConfirmacao(action : UIAlertAction){
        let alert = UIAlertController(
            title: "Feito!",
            message: "Verifique seu email e tenha acesso ao documento.",
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok!", style: .default, handler: nil))
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    @IBAction func onClickButtonConfirmar(_ sender: UIButton) {
        apresentarAlertaRevisao()
    }
    
}
