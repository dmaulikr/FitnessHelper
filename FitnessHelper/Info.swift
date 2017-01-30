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
    
   //http://maxcentral.ru
    static let sharedObject = Info()
    
    ///color
    let colorFon = UIColor(patternImage: UIImage(named:"fon3.jpg")!)
    let colorFon2 = UIColor(patternImage: UIImage(named:"fon3.jpg")!).cgColor
    let colorFonWit = UIColor(patternImage: UIImage(named:"fon2.jpg")!)
    let colorCell = UIColor(red:35/255.0,green:37/255.0,blue:53/255.0,alpha:1.0)
    let colorText = UIColor.white
    let colorOrange = UIColor(red:219/255.0,green:135/255.0,blue:50/255.0,alpha:1.0)
    
    var User = ""

    
    var items : Array = ["Спина", "Грудь", "Ноги", "Бицепс", "Трицепс", "Плечи", "Шея","Трапеция","Предплечья и запястия"]
    var itemsImages : Array = [
    "http://iq-body.ru/uploads/fx2/263x263/training_category/original/xbiceps.gif.pagespeed.ic.ptTzYIqsx_.png",
    "http://iq-body.ru/uploads/fx2/263x263/training_category/original/xtriceps.gif.pagespeed.ic.-uwW0SU3OD.png",
    "http://iq-body.ru/uploads/fx2/263x263/training_category/original/xplechi.gif.pagespeed.ic.ayorRDL5rK.png",
    "http://iq-body.ru/uploads/fx2/263x263/training_category/original/xshirspina.gif.pagespeed.ic.WM1DO0WMKm.png",
        "http://iq-body.ru/uploads/fx2/263x263/training_category/original/xkvadro.gif.pagespeed.ic._R-g0C_3hN.png",
    "http://iq-body.ru/uploads/fx2/263x263/training_category/original/xgrud.gif.pagespeed.ic.eCuc9PWwT7.png"
    ]
    
    var b1 = [
        "name": "Подъем штанги на бицепс стоя",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/06/podyom-shtangi-na-biceps.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xbiceps.gif.pagespeed.ic.ptTzYIqsx_.png",
        "discription" : "Плавно, при выдохе, согните руки в локтях и поднимите штангу! На вдохе медленно опустите её и вернитесь в исходное положение!Следите за локтями, они должны быть прижаты к туловищу и при этом неподвижны!При поднятии, не закидывайте штангу, а плавно поднимайте, прочувствуйте как бицепс напряжен!Опускаете штангу медленно!Вдох-вниз,  выдох-вверх!"
    ]
    
    let b2 = [
        "name": "Молотки с гантелями",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/06/Molotki-na-bitseps.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xbiceps.gif.pagespeed.ic.ptTzYIqsx_.png",
        "discription" : "При поднятии кисти неподвижны, в этом и заключается вся фишка молотков;Локти плотно прижаты к корпусу, не выдвигайте их вперед;При сгибании выдох, разгибании-вдох;В верхних и нижних точках задерживаетесь на 1-2 секунды;Опускаете руки медленно, старайтесь прочувствовать мышцу."
    ]
    
    let b3 = [
        "name": "Подъём гантелей на бицепс сидя",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/06/pod'yom-ganteley.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xbiceps.gif.pagespeed.ic.ptTzYIqsx_.png",
        "discription" : "Локти прижимаем к телу;Сгибаете руки попеременно (вместе, по отдельности), при этом кисть разворачивается наружу;На поднятии-вдох, на опускании-выдох;В нижней точке рука перпендикулярна полу. Задержитесь в верхней точке на пару секунд, локоть немного выведите вперед, что обеспечит максимальное сокращение бицепса."
    ]

    let t1 = [
        "name": "Французский жим",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/09/frantsuzskiy-zhim-lezha.gif",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xtriceps.gif.pagespeed.ic.-uwW0SU3OD.png",
        "discription" : "С положения лежа выполняется сгибание рук и выпрямление перед собой. Упражнение выполняете с подстраховщиком, который сможет подать и принять штангу. Обязательно следите за локтями, не разводите их в разные стороны. Локти во время выполнения неподвижны, и находятся близко друг к другу; Опускания производятся почти до касания головы либо за голову; Движение в плечевом суставе не должно происходить. Производится сгибание только в локтевом; При движении вниз вдох, при движении вверх выдох. Три подхода по 10-12 раз"
    ]
    
    let t2 = [
        "name": "Отжимания на брусьях",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/07/otzhimaniya-na-parallelnyh-brusiah.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xtriceps.gif.pagespeed.ic.-uwW0SU3OD.png",
        "discription" : "В исходном положении корпус стараемся не наклонять вперед, руки прижимаем к туловищу;Начинаем выполнять упражнение. Медленно движемся вниз до полного опускания, останавливаемся, возвращаемся в исходное положение;Во время движения корпус не раскачивается, взгляд направлен вперед, плечи параллельны друг другу;Выдох выполняем на усилие (во время движения вверх)."
    ]
    let t3 = [
        "name": "Жим штанги узким хватом",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/06/zhim-shtangi-lezha1.jpeg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xtriceps.gif.pagespeed.ic.-uwW0SU3OD.png",
        "discription" : "Необходимо ложиться так же как на классическом жиме лежа, глаза находятся под грифом.Хват на ширине плеч. Кисти на ширине двух вытянутых больших пальца.Выпрямляете руки на верху почти полностью. Касание груди производится в нижней точке. При движении вниз-вдох, вверх-выдох. Движение локтей примерно под 45 градусов к туловищу"
    ]
    
    let t4 = [
        "name": "Жим вниз на высоком блоке",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/09/zhim-vniz-na-vyisokom-bloke.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xtriceps.gif.pagespeed.ic.-uwW0SU3OD.png",
        "discription" : "Нагрузка ложится на трицепс. Данное упражнение выполняете либо после французского жима, либо после жима узким хватом. Жим вниз отлично забивает трицепс. Спина прямая, корпус наклонен вперед, давим вниз чисто руками, без помощи корпусом."
    ]


    let p1 = [
        "name": "Армейский жим",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/armeiskii-zhim.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xplechi.gif.pagespeed.ic.ayorRDL5rK.png",
        "discription" : "Поднятия производятся плавно; На опускании вдох на поднятии выдох; Не стремитесь сразу к большому весу, а сосредоточьтесь на правильной технике выполнения упражнения. Конечно на последних двух повторах без читинга не обойтись (если жим выполняется стоя); Нагрузка на спину идет приличная, так что не забывайте про пояс."
    ]
    
    let p2 = [
        "name": "Жим гантелей",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/jim-gantelei-sidya.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xplechi.gif.pagespeed.ic.ayorRDL5rK.png",
        "discription" : "Стоя, ноги на ширине плеч, кладем гантели на плечи, спина прямая; На выдохе-вверх, вдохе-вниз; Локти опускайте плавно и не ниже уровня плеча; В верхней точке гантели слегка соприкасаются."
    ]
    
    let p3 = [
        "name": "Махи гантелями",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/mahi-gantelyami.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xplechi.gif.pagespeed.ic.ayorRDL5rK.png",
        "discription" : "Подходим к стойке с гантелями, принимаем исходное положение; Берем гантели и располагаем их по боковым поверхностям бедер или перед собой; Корпус в вертикальном положении и неподвижен; Создаем и сохраняем во время выполнения упражнения угол в локтевом суставе 120 градусов; Начинаем выполнять упражнение. Поднимаем руки с гантелями перед собой до уровня, когда плечо станет параллельно полу (не выше); Плечевой пояс должен оставаться неподвижным (исключает работу трапециевидных мышц); Выдох выполняем на усилие (во время движения вверх)."
    ]
    
    let p4 = [
        "name": "Тяга штанги к подбородку",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/tyaga-shtangi-k-podborodku.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xplechi.gif.pagespeed.ic.ayorRDL5rK.png",
        "discription" : "Подходим к штанге, принимаем исходное положение. Берем штангу со стоек и располагаем перед собой. Ширина хвата 15 см. Корпус в вертикальном положении и неподвижен. Начинаем выполнять упражнение. Выполняем тягу штанги вдоль корпуса в направлении подбородка. Штанга не касается корпуса. Плечевой пояс должен оставаться неподвижным (исключает работу трапециевидных мышц). Выдох выполняем на усилие (во время движения вверх)"
    ]
    
    let g1 = [
        "name": "Жим штанги лежа на горизонтальной скамье",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xgrud.gif.pagespeed.ic.eCuc9PWwT7.png",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/06/zhim-lezha-grud1.jpg",
        "discription" : "Прежде чем выполнять упражнение заведите ноги под себя т.е. под скамью не расставляя их очень широко. В исходном положении, прежде чем Вы берёте штангу и начинаете жать, гриф должен быть на уровне глаз. Беретесь хватом шире плеч (10 см от линии). В исходном положении лопатки строго сведены. Снимайте штангу со стоек. Опускаете штангу медленно до касания сосков. Поднятие производится тоже медленно. Если Ваша цель ПРОКАЧАТЬ грудь, то жмете ЧИСТО грудью, если Ваша цель ВЕСА, то во время жима Вы должны образовать мостик, сильно упершись ногами в пол и помогая ими."
    ]
    let g2 = [
        "name": "Жим штанги лежа на горизонтальной скамье",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xgrud.gif.pagespeed.ic.eCuc9PWwT7.png",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/06/zhim-gantelei-lezha.png",
        "discription" : "Выпрямляем руки и держим их в верхней точке пару секунд. Медленно опускаем гантели вниз, как можно ниже. Затем, усилием грудных мышц выжимаем гантели вверх до полного выпрямления рук"
    ]
    
    let g3 = [
        "name": "Сведение рук на верхнем блоке",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/09/svedenie-ruk-v-bloke.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xgrud.gif.pagespeed.ic.eCuc9PWwT7.png",
        "discription" : "Вспомогательную нагрузку берут передние дельтовидные мышцы, основная работа ложится на грудь. Упражнение отлично растягивает и нагружает грудь. Можно использовать упражнение вместо разводки гантелей, а можно и после. Спина прямая, грудь бочкой, руки полусогнуты во время всего упражнения."
    ]
    
    let s1 = [
        "name": "Становая тяга",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xshirspina.gif.pagespeed.ic.WM1DO0WMKm.png",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/07/Stanovaya-tyaga-tehnika.jpg",
        "discription" : "Поднимите голову.П лечи отведите назад;. Таз опустите. Обратите внимание, чем ниже расположен таз, тем больше нагрузку на себя возьмут квадрицепсы и ягодицы. Чем выше будет таз, тем нагрузка больше повысится на нижнюю часть спины и разгибатели бедра. Поясницу прогнуть. Приступив к подъёму, тяните штангу около ног. Чем ближе к Вам будет штанга, тем меньше будет нагрузка на небольшие мышцы низа спины. Подъём должен быть плавным и равномерным. После того как штанга пройдет колени, полностью выпрямитесь и максимально сведите лопатки. Опускаете штангу довольно медленно. Начните движение вниз с отведения таза назад, гриф скользит вдоль бедер. Поясница прогнута.Опускание штанги происходит до легкого касания пола, не нужно со всей мощи шмякать об пол блинами. На вдохе опускаете медленно штангу вниз, на выдохе мощно вверх."
    ]

    let s2 = [
        "name": "Тяга штанги в наклоне",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xshirspina.gif.pagespeed.ic.WM1DO0WMKm.png",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/tyaga-shtangi-v-naklone2.jpg",
        "discription" : "Подходим к штанге. Если штанга стоит на полу — выполняем отрыв штанги от пола в стиле становой тяги. Если штанга стоит на стойках на уровне коленных суставов, то снимаем произвольно, с сохранением естественных изгибов позвоночника. Принимаем исходное положение. Сгибаем корпус под углом 45 градусов по отношению к полу. Гриф штанги располагается в районе коленных суставов. В коленных суставах угол 120 градусов. Позвоночник сохраняет естественное положение (не допускаем сгибания). Начинаем выполнять упражнение. Выполняем тягу штанги вдоль бедер в направлении нижней части живота. Движение начинаем с отведения плечевого пояса назад. Возвращаемся в исходное положение. Не допускаем потери контроля над штангой во время движения вниз (корпус неподвижен). Выдох выполняем на усилие (во время движения вверх)."
    ]
    
    let s3 = [
        "name": "Подтягивания широким хватом",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xshirspina.gif.pagespeed.ic.WM1DO0WMKm.png",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/podtyagivaniya-klassicheskie.jpg",
        "discription" : "Верхний хват (ладони смотрят от нас в сторону), руки расставляем как можно шире, тянемся к груди. Здесь спина будет работать по-максимуму, бицепс и плечелучевая мышцы получат не большую нагрузку, но при этом амплитуда выполнения упражнения уменьшится чуть ли не в два раза. Хоть и амплитуда мала, но на мой взгляд, это самый лучший вариант подтягиваний для прокачки широчайших, так как во время выполнения, спина постоянно будет находиться в напряженном состоянии."
    ]
    
    let s4 = [
        "name": "Тяга т-грифа в наклоне",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xshirspina.gif.pagespeed.ic.WM1DO0WMKm.png",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/09/tyaga-t-grifa-1.jpg",
        "discription" : "Беремся за рукоятки т-грифа. Ноги согнуты в коленях, руки выпрямлены. Теперь отводя плечи назад, берем гриф со стойки. Стараясь не двигать корпусом подтягиваем блины к груди, в верхней точке сводим лопатки. Задерживаемся пару секунд в этом положении и медленно опускаем штангу вниз."
    ]
    
    let l1 = [
        "name": "Приседания со штангой на плечах",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/07/prisedaniya-so-shtangoi.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xkvadro.gif.pagespeed.ic._R-g0C_3hN.png",
        "discription" : "Одевайте пояс если уже поднимаете свой вес, перебинтовывайте колени если вес в полтора и больше раз Вашего. Если вес больше вашего, то зовете человека, который Вас будет страховать. Хват штанги немного шире плеч, как Вам удобнее, в идеале штанга кладется на лопатки, но можно на плечи. Взвалили штангу на лопатки или плечи, отходите на шаг назад. Спина прямая. Ширину постановки ног настраиваете под себя. Про постановку ног опишу ниже. Приседаем глубоко, до полной параллели верхнего бедра с полом. Некоторые детали опишу ниже. При приседании мысок совершенно не работает, весь приседания делаете пятками, смотрите перед собой, чтобы не потерять равновесие."
    ]
    
    let l2 = [
        "name": "Разгибание ног в тренажере сидя",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xkvadro.gif.pagespeed.ic._R-g0C_3hN.png",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/07/sgibaniya-nog-sidya-v-trenazhere.jpg",
        "discription" : "Подходим к тренажеру, принимаем исходное положение. Садимся на сидение. Регулируем спинку сидения таким образом, чтобы при прижатой пояснице, коленные суставы обеих ног были на одной линии с осью тренажера. Фиксируем нижний валик в районе основания голени (чуть выше голеностопного сустава). Руками удерживаем себя за ручки расположённые по бокам тренажера. Это позволит сохранить прижатыми к сидению ягодицы. Начинаем выполнять разгибание ног в тренажере сидя. Следим за тем, чтобы в конечной точке коленный сустав не выпрямлялся полностью, во избежание получения травмы. Выдох выполняем на усилие (во время движения вверх)."
    ]
    
    let l3 = [
        "name": "Выпады со штангой",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/07/vipady-so-shtangoi.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xkvadro.gif.pagespeed.ic._R-g0C_3hN.png",
        "discription" : "Берете гантели в руки (если выполняете со штангой кладете её на плечи). Необходимо поставить ноги на ширине плеч. Носок передней ноги слегка повернут внутрь для того, чтобы Вы могли держать равновесие. Спина прямая, смотрите перед собой. Выполняем шаг назад, ставя ногу на носок, сгибаем обе ноги в коленных суставах, чтобы углы составили 90 градусов. Колено шаговой ноги не касается пола. Выпады выполняем попеременно. Сначала правая нога идёт назад, левая-на месте, затем правая-на месте, левая-назад. При движении вниз-вдох, вверх-выдох"
    ]
    
    let l4 = [
        "name": "Подъемы на носки стоя",
        "image": "http://maxcentral.ru/wp-content/uploads/2013/08/podyom-na-noski-stoya.jpg",
        "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xkvadro.gif.pagespeed.ic._R-g0C_3hN.png",
        "discription" : "Встаем на возвышение. Одной рукой держимся за что-нибудь для того чтобы удержать равновесие. В другой руке держим гантелю. Не работающая ноги прижата к той, которая будет работать. Выполнение происходит по полной амплитуде, дыхание произвольное. Следите за тем, чтобы колено было неподвижно, желательно, чтобы нога была выпрямлена, а стопа перпендикулярна платформе;"
    ]
    
    var arrayBiceps = [[String:String]()]
    var arrayTriceps = [[String:String]()]
    var arrayShoulders = [[String:String]()]
    var arrayBreast = [[String:String]()]
    var arrayBack = [[String:String]()]
    var arrayLegs = [[String:String]()]
    
    
    var arrayMyProgram = [[String:NSNumber]]()
    //var arrayMyNameProgram = Dictionary<String,String>()
    var arrayMyNameProgram = [[String:String]()]
    
    var dictMuscules = Dictionary<String, NSArray>()
    
    var arrayMyAllAdvert = [[String:NSNumber]]()
    
    var arrayMyAdvert = [[String:String]()]
    
    init() {
        //print("Hello")
        arrayBiceps.removeFirst()
        arrayBiceps.append(b1)
        arrayBiceps.append(b2)
        arrayBiceps.append(b3)
        
        arrayTriceps.removeFirst()
        arrayTriceps.append(t1)
        arrayTriceps.append(t2)
        arrayTriceps.append(t3)
        arrayTriceps.append(t4)
        
        
        arrayShoulders.removeFirst()
        arrayShoulders.append(p1)
        arrayShoulders.append(p2)
        arrayShoulders.append(p3)
        arrayShoulders.append(p4)
        
        arrayBreast.removeFirst()
        arrayBreast.append(g1)
        arrayBreast.append(g2)
        arrayBreast.append(g3)
        
        arrayBack.removeFirst()
        arrayBack.append(s1)
        arrayBack.append(s2)
        arrayBack.append(s3)
        arrayBack.append(s4)

        arrayLegs.removeFirst()
        arrayLegs.append(l1)
        arrayLegs.append(l2)
        arrayLegs.append(l3)
        arrayLegs.append(l4)
        
        arrayMyNameProgram.removeFirst()
        arrayMyAdvert.removeFirst()
        
        dictMuscules = ["Бицепс":arrayBiceps as NSArray, "Трицепс":arrayTriceps as NSArray, "Плечи":arrayShoulders as NSArray,"Грудь":arrayBreast as NSArray, "Спина":arrayBack as NSArray,"Ноги":arrayLegs as NSArray]
        
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
    
    func styleTextField (view:UITextField) -> UITextField
    {
        return view
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
