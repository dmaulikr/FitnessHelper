//
//  Muscules.swift
//  FitnessHelper
//
//  Created by Alex on 12.02.17.
//  Copyright © 2017 AnsA. All rights reserved.
//

import Foundation
import RealmSwift

class Muscules: Object {
    dynamic var name = ""
    dynamic var image = ""
    dynamic var categoryImage = ""
    dynamic var discription = ""
    dynamic var category : Category!
}

/*
let t3 = [
    "name": "Жим штанги узким хватом",
    "image": "http://maxcentral.ru/wp-content/uploads/2013/06/zhim-shtangi-lezha1.jpeg",
    "categoryimage":"http://iq-body.ru/uploads/fx2/263x263/training_category/original/xtriceps.gif.pagespeed.ic.-uwW0SU3OD.png",
    "discription" : "Необходимо ложиться так же как на классическом жиме лежа, глаза находятся под грифом.Хват на ширине плеч. Кисти на ширине двух вытянутых больших пальца.Выпрямляете руки на верху почти полностью. Касание груди производится в нижней точке. При движении вниз-вдох, вверх-выдох. Движение локтей примерно под 45 градусов к туловищу"
]*/
