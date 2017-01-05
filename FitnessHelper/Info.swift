//
//  Info.swift
//  FitnessHelper
//
//  Created by Alex on 17.12.16.
//  Copyright © 2016 AnsA. All rights reserved.
//

import Foundation
import UIKit

class Info {
    
   
    static let sharedObject = Info()
    var items : Array = ["Спина", "Грудь", "Ноги", "Бицепс", "Трицепс", "Плечи", "Шея","Трапеция","Предплечья и запястия"]
    var b1 = [
        "name": "Подъем штанги на бицепс стоя",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/06/podyom-shtangi-na-biceps.jpg",
        "discription" : "Плавно, при выдохе, согните руки в локтях и поднимите штангу! На вдохе медленно опустите её и вернитесь в исходное положение!Следите за локтями, они должны быть прижаты к туловищу и при этом неподвижны!При поднятии, не закидывайте штангу, а плавно поднимайте, прочувствуйте как бицепс напряжен!Опускаете штангу медленно!Вдох-вниз,  выдох-вверх!"
    ]
    
    let b2 = [
        "name": "Молотки с гантелями",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/06/Molotki-na-bitseps.jpg",
        "discription" : "При поднятии кисти неподвижны, в этом и заключается вся фишка молотков;Локти плотно прижаты к корпусу, не выдвигайте их вперед;При сгибании выдох, разгибании-вдох;В верхних и нижних точках задерживаетесь на 1-2 секунды;Опускаете руки медленно, старайтесь прочувствовать мышцу."
    ]
    
    let b3 = [
        "name": "Подъём гантелей на бицепс сидя",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/06/pod'yom-ganteley.jpg",
        "discription" : "Локти прижимаем к телу;Сгибаете руки попеременно (вместе, по отдельности), при этом кисть разворачивается наружу;На поднятии-вдох, на опускании-выдох;В нижней точке рука перпендикулярна полу. Задержитесь в верхней точке на пару секунд, локоть немного выведите вперед, что обеспечит максимальное сокращение бицепса."
    ]

    let t1 = [
        "name": "Французский жим",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/09/frantsuzskiy-zhim-lezha.gif",
        "discription" : "С положения лежа выполняется сгибание рук и выпрямление перед собой. Упражнение выполняете с подстраховщиком, который сможет подать и принять штангу. Обязательно следите за локтями, не разводите их в разные стороны. Локти во время выполнения неподвижны, и находятся близко друг к другу; Опускания производятся почти до касания головы либо за голову; Движение в плечевом суставе не должно происходить. Производится сгибание только в локтевом; При движении вниз вдох, при движении вверх выдох. Три подхода по 10-12 раз"
    ]
    
    let t2 = [
        "name": "Отжимания на брусьях",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/07/otzhimaniya-na-parallelnyh-brusiah.jpg",
        "discription" : "В исходном положении корпус стараемся не наклонять вперед, руки прижимаем к туловищу;Начинаем выполнять упражнение. Медленно движемся вниз до полного опускания, останавливаемся, возвращаемся в исходное положение;Во время движения корпус не раскачивается, взгляд направлен вперед, плечи параллельны друг другу;Выдох выполняем на усилие (во время движения вверх)."
    ]

    let p1 = [
        "name": "Армейский жим",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/armeiskii-zhim.jpg",
        "discription" : "Поднятия производятся плавно; На опускании вдох на поднятии выдох; Не стремитесь сразу к большому весу, а сосредоточьтесь на правильной технике выполнения упражнения. Конечно на последних двух повторах без читинга не обойтись (если жим выполняется стоя); Нагрузка на спину идет приличная, так что не забывайте про пояс."
    ]
    
    let p2 = [
        "name": "Жим гантелей",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/jim-gantelei-sidya.jpg",
        "discription" : "Стоя, ноги на ширине плеч, кладем гантели на плечи, спина прямая; На выдохе-вверх, вдохе-вниз; Локти опускайте плавно и не ниже уровня плеча; В верхней точке гантели слегка соприкасаются."
    ]
    
    let p3 = [
        "name": "Махи гантелями",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/mahi-gantelyami.jpg",
        "discription" : "Подходим к стойке с гантелями, принимаем исходное положение; Берем гантели и располагаем их по боковым поверхностям бедер или перед собой; Корпус в вертикальном положении и неподвижен; Создаем и сохраняем во время выполнения упражнения угол в локтевом суставе 120 градусов; Начинаем выполнять упражнение. Поднимаем руки с гантелями перед собой до уровня, когда плечо станет параллельно полу (не выше); Плечевой пояс должен оставаться неподвижным (исключает работу трапециевидных мышц); Выдох выполняем на усилие (во время движения вверх)."
    ]
    
    var arrayBiceps = [[String:String]()]
    var arrayTriceps = [[String:String]()]
    var arrayShoulders = [[String:String]()]
    
    
    var arrayMyProgram = [[String:NSNumber]]()
    //var arrayMyNameProgram = Dictionary<String,String>()
    var arrayMyNameProgram = [[String:String]()]
    
    
    
    //var dictItems = [[String:String]()]
    var dictMuscules = Dictionary<String, NSArray>()
    
    init() {
        //print("Hello")
        arrayBiceps.removeFirst()
        arrayBiceps.append(b1)
        arrayBiceps.append(b2)
        arrayBiceps.append(b3)
        
        arrayTriceps.removeFirst()
        arrayTriceps.append(t1)
        arrayTriceps.append(t2)
        
        
        arrayShoulders.removeFirst()
        arrayShoulders.append(p1)
        arrayShoulders.append(p2)
        arrayShoulders.append(p3)
        
        arrayMyNameProgram.removeFirst()
        
//        dict["key"]!.add(arrayBiceps)
//        dict["key"]!.add(arrayTriceps)
        
        dictMuscules = ["Бицепс":arrayBiceps as NSArray, "Трицепс":arrayTriceps as NSArray, "Плечи":arrayShoulders as NSArray ]
        
        print(dictMuscules["Бицепс"]!)
        print(dictMuscules["Трицепс"]!)
        print(dictMuscules)
        
        for (key, value) in dictMuscules {
            print("\(key) -> \(value)")
        }
        
        let valuesDict = (dictMuscules.values)
        print(valuesDict as Any)
        let key = [String](dictMuscules.keys)
        print(key)
        
        let valuesDictKey = valuesDict
        
        //print(dict[key[0]]![0]) work+
        
        let arrFest = dictMuscules[key[0]]?.value(forKey: "image") // все значения во всех словарях с ключем image
        print(arrFest!)
        
        let arrT = dictMuscules[key[0]]?.mutableArrayValue(forKey: "image")
        print(arrT?[0])// первый елемент из массива
        
        //let pic = ((dict[key[0]]?[0]).value as? NSDictionary)?["image"] as? String ?? ""
        
        //let snapshotValue = snapshot.value as? NSDictionary
        //let imFest = arrFest. ["image"] as! String
        
        //print(dict[key[0]]?[0]["image"] as! String?)
        
    }
    
    /*
    let items1 : Array<Any>?
    let b11 = Dictionary<String, AnyObject>()
    let b22 = Dictionary<String, AnyObject>()
    let b33 = Dictionary<String, AnyObject>()
    
    let t11 = Dictionary<String, AnyObject>()
    let t22 = Dictionary<String, AnyObject>()
    
    var myDictionary = Dictionary<String, AnyObject>()
*/
    
    }
    
    
    
    /*

    //let dict = Dictionary<String, Array<Int>>()//[Int: String]()
    //let dict = ["Бицепс": arrayBiceps, "Трицепс":arrayTriceps]
    
    
    /*
    let Biceps = ["Подъем штанги на бицепс стоя",
    "Молотки с гантелями",
    "Подъём гантелей на бицепс сидя",
    "Концентрированные сгибания рук с гантелями",
    "Подъём штанги на скамье скотта",
    "Сгибание рук со штангой обратным хватом"]
    
    let Triceps = ["Французский жим",
                   "Отжимания на брусьях",
                   "Жим лежа узким хватом",
                   "Жим вниз на высоком блоке",
                   "Разгибание рук на верхнем блоке",
                  ]*/
   
        
   // }
    
    //["Biceps":"Бицепс","Triceps":"Трицепс","Shoulders":"Плечи","Chest":"Грудь","Back":"Спина","Legs":"Ноги"]
    /*
     
     Biceps:
          Triceps:
          Shoulders:
          Chest:
          Back:
          Legs:
     
    Бицепс:
    
    Подъем штанги на бицепс стоя
    Молотки с гантелями
    Подъём гантелей на бицепс сидя
    Концентрированные сгибания рук с гантелями
    Подъём штанги на скамье скотта
    Сгибание рук со штангой обратным хватом
    
    Трицепс:
    Французский жим
    Отжимания на брусьях
    Жим лежа узким хватом
    Жим вниз на высоком блоке
    Разгибание рук на верхнем блоке
    
    Плечи:
    
    Армейский жим
    Жим гантелей
    Махи гантелями
    Тяга штанги к подбородку
    Отведение руки на блочном тренажере
    
    Грудь:
    Жим штанги лежа
    Жим гантелей лежа
    Разводка гантелей лежа на скамье
    Сведение рук на верхнем блоке
    
    Спина:
    Становая тяга
    Становая на прямых ногах
    Тяга штанги в наклоне
    Тяга горизонтального блока к животу
    Тяга гантели одной рукой в наклоне
    Тяга вертикального блока к груди
    Подтягивания широким хватом на турнике
    Тяга т-грифа в наклоне
    Шраги со штангой
    Тяга нижнего блока одной рукой
    Пулловер на нижнем блоке
    
    Ноги:
    Приседания со штангой на плечах
    Разгибание ног в тренажере сидя
    Выпады со штангой
    Жим ногами лежа
    Становая на прямых ногах
    Подъемы на носки стоя
 */*/
