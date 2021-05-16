//
//  TypesPicker.swift
//  PokeDex
//
//  Created by Nicholas Vu on 4/15/21.
//

import SwiftUI

struct TypesPicker: View {
    
    @State var selected = "Normal"
    
    var body: some View {
        ZStack{
            VStack{
                Text("")
                Text("Select a Pokemon Type:")
                    .fontWeight(.heavy)
                    .font(.title)
                CustomPicker(selected: self.$selected)
               
                VStack{
                Text("Weakness:")
                    .font(.title)
                    .fontWeight(.heavy)
                    .fixedSize()
                    .padding()
                }
                
                VStack(alignment: .center) {
                switch self.selected {
                case "Normal":
                    Text("Fighting")
                case "Fire":
                    Text("Water, Rock, Ground")
                case "Water":
                    Text("Grass, Electric")
                case "Grass":
                    Text("Fire, Bug, Ice, Flying, Poison")
                case "Flying":
                    Text("Electric, Ice, Rock")
                case "Fighting":
                    Text("Psychic, Fairy, Flying")
                case "Poison":
                    Text("Ground, Psychic")
                case "Electric":
                    Text("Ground")
                case "Ground":
                    Text("Grass, Water, Ice")
                case "Rock":
                    Text("Fightning, Grass, Ground, Steel, Water")
                case "Psychic":
                    Text("Dark, Ghost, Bug")
                case "Ice":
                    Text("Fire, Fighting, Rock, Steel")
                case "Bug":
                    Text("Fire, Rock, Flying")
                case "Ghost":
                    Text("Dark, Ghost")
                case "Steel":
                    Text("Fire, Fighting, Ground")
                case "Dragon":
                    Text("Dragon, Ice, Fairy")
                case "Dark":
                    Text("Fighting, Bug, Fairy")
                case "Fairy":
                    Text("Poison, Steel")
                default:
                    Text("Normal")
                }
            }
        Spacer()
                VStack{
                    Text("")
                }
        Spacer()
            }
        }
        .navigationTitle("Counters")

    }
}

struct TypesPicker_Previews: PreviewProvider {
    static var previews: some View {
       
        ZStack{
            VStack{
                
                
            Spacer()
                
            HStack{
                Text("Weakness:")
            }
                Spacer()
            }
        }
    }
}

struct Types {
    let type: String
    let color: Color
}
struct CustomPicker : UIViewRepresentable {
    
    @Binding var selected: String
    
    func makeCoordinator() -> Coordinator {
        
        return CustomPicker.Coordinator(parent1: self)
    }
    
        
    func makeUIView(context: UIViewRepresentableContext<CustomPicker>) -> UIPickerView{
        
        let picker = UIPickerView()
        picker.dataSource = context.coordinator
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIView(_ uiView: UIPickerView, context: UIViewRepresentableContext<CustomPicker>) {
    }
    
    class Coordinator : NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
        
        var parent : CustomPicker
        
        init(parent1 : CustomPicker) {
            
            parent = parent1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            
            return data.count
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        /*func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            
            return data[row]
        }*/
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 100, height: 60))
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
            
            label.text = data[row]
            label.textColor = .white
            label.textAlignment = .center
            label.font = .systemFont(ofSize: 20, weight: .bold)
            
            view.backgroundColor = .gray
            view.addSubview(label)
            
            view.clipsToBounds = true
            view.layer.cornerRadius = view.bounds.height / 2
            
            
            return view
        }
        
        func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
            
            return UIScreen.main.bounds.width - 100
        }
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            
            return 60
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            
            self.parent.selected = data[row]
        }
    }
    
}

var data = ["Normal", "Fire", "Water", "Grass", "Flying", "Fighting", "Poison", "Electric", "Ground", "Rock", "Psychic", "Ice", "Bug", "Ghost", "Steel", "Dragon", "Dark", "Fairy"]
