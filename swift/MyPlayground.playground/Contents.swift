//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

typealias Distance = Double

//设置圆心
struct Position{
    var x : Double
    var y : Double
}


extension Position{
    func inRange(range : Distance) -> Bool {
        print( sqrt(x * x + y * y ))
        return sqrt(x * x + y * y ) <= range
    }

}

//定义战舰的位置和有效打击范围
struct Ship {
    var position: Position
    var firingRange: Distance
    var unsafeRange: Distance
}

//打击范围
var sh : Distance
 sh = 3
//战舰位置
var chenpos = Position(x: 4, y: 5)

var shan : Double
 shan = 4

//初始化战舰和打击范围
var ipc = Ship(position: chenpos, firingRange: sh, unsafeRange: sh)
print(ipc.position.inRange(shan))

extension Ship{
    func canEngageShip(target: Ship) -> Bool {
        let dx = target.position.x - position.x
        let dy = target.position.y - position.y
        let targeDistance = sqrt(dx*dx + dy*dy)
        return targeDistance <= firingRange
    }
}
if(ipc.position.inRange(shan) == true){

    print("ffffff")
}else{
    print("qqqqqqqqq")
}







