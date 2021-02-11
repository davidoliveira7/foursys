import Foundation

//defien o tamanho do circulo para que fique igual a do funil
let ball = OvalShape (width: 40, height: 40)

//let barrierWidth = 300.0
//let barrierHeight = 25.0
//
//let barrierPoints = [
//    Point(x: 0, y: 0),
//    Point(x: 0, y: barrierHeight),
//    Point(x: barrierWidth, y: barrierHeight),
//    Point(x: barrierWidth, y:0)
//]
//
//let barrier = PolygonShape (points: barrierPoints)

//permitir varias barreiras
var barriers: [Shape] = []

var targets: [Shape] = []

let funnelPoints = [
    Point(x: 0, y: 50),
    Point(x: 80, y: 50),
    Point(x: 60, y: 0),
    Point(x: 20, y: 0),
]

let funnel = PolygonShape(points: funnelPoints)

//let targetPoints = [
//    Point(x: 10, y: 0),
//    Point(x: 0, y: 10),
//    Point(x: 10, y: 20),
//    Point(x: 20, y: 10),
//]
//
//let target = PolygonShape (points: targetPoints)

/*
The setup() function is called once when the app launches. Without it, your app won't compile.
Use it to set up and start your app.

You can create as many other functions as you want, and declare variables and constants,
at the top level of the file (outside any function). You can't write any other kind of code,
for example if statements and for loops, at the top level; they have to be written inside
of a function.
*/

fileprivate func setupBall() {
    ball.position = Point(x: 250, y: 400)
    scene.add(ball)
    ball.hasPhysics = true
    //definindo cor ao circulo
    ball.fillColor = .blue
    ball.onCollision = ballCollied(with:)
    ball.isDraggable = false
    scene.trackShape(ball)
    ball.onExitedScene = ballExitedScene
    ball.onTapped = resetGame
    //bola quicar
    ball.bounciness = 0.6
}

fileprivate func addBarrier(at position: Point, width: Double, height: Double, angle: Double) {
    //adicionar mais barreiras
    let barrierPoints = [
        Point(x: 0, y: 0),
        Point(x: 0, y: height),
        Point(x: width, y: height),
        Point(x: width, y: 0)
    ]
    let barrier = PolygonShape (points: barrierPoints)
    barriers.append (barrier)
    
    //Adicionar barreira
    barrier.position = position
    barrier.hasPhysics = true
    scene.add(barrier)
    barrier.isImmobile = true
    //atribuir cor a barreira
    barrier.fillColor = .brown
    //mudar angulo da barreira
barrier.angle = angle
//        0.1
}

fileprivate func setupFunnel() {
    //Adicionar um funil
    funnel.position = Point(x: 200, y: scene.height - 24)
    scene.add(funnel)
    //Associado a funcao do circulo ao usuario
    funnel.onTapped = dropBoll
    funnel.fillColor = .gray
    funnel.isDraggable = false
}

func setup() {
    setupBall()
    
    addBarrier (at: Point(x: 200, y:150), width: 80, height: 25, angle: 0.1)
    addBarrier (at: Point(x: 100, y:150), width: 30, height: 15, angle: -0.2)
    addBarrier (at: Point(x: 300, y:150), width: 100, height: 25, angle: 0.3)

    
    setupFunnel()
    //adiciona um alvo a cena
    addTarget(at: Point(x: 133, y: 614))
    addTarget(at: Point(x: 111, y: 474))
    addTarget(at: Point(x: 256, y: 280))
    addTarget(at: Point(x: 151, y: 242))
    addTarget(at: Point(x: 165, y: 40))
    
    resetGame()
    
    scene.onShapeMoved = printposition(of:)
   
}

func dropBoll(){
    // libera a bola para a posicao do funil
    ball.position = funnel.position
    ball.stopAllMotion()
    
    for barrier in barriers {
        barrier.isDraggable = false
    }
    for target in targets{
        target.fillColor = .yellow
    }
}

func addTarget (at position: Point) {
    let targetPoints = [
        Point(x: 10, y: 0),
        Point(x: 0, y: 10),
        Point(x: 10, y: 20),
        Point(x: 20, y: 10)
    ]
    let target = PolygonShape (points: targetPoints)
    targets.append(target)
    target.position = position
    target.hasPhysics = true
    target.isImmobile = true
    target.isImpermeable = false
    target.fillColor = .yellow
    scene.add(target)
    target.name = "target"
//    target.isDraggable = false
}
//Processa colisoes entre a bola e os alvos
func ballCollied(with otherShape: Shape){
    if otherShape.name != "target"
    { return }
    otherShape.fillColor = .green
}

func ballExitedScene() {
        for barrier in barriers {
        barrier.isDraggable = true
    }
    
    //pontuacao
    var hitTargets = 0
    for target in targets {
        if target.fillColor == .green {
            hitTargets += 1
        }
    }
    if hitTargets == targets.count{
        scene.presentAlert(text: "Vocë Ganhou!", completion: alertDismissed)
    }
        
////        print("Won game")
//    }
}
// Reinicia o jogo removendo a bola abaixo da cena que ira desbloquear a barreira
func resetGame() {
    ball.position = Point(x: 0, y: -80)
}
//mostrar a posicao da forma no console
func printposition(of shape: Shape) {
    print(shape.position)
}

func alertDismissed() {
    
}

