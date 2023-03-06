import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
       
//        if Constants.isLandscape
//        {
//            // Use landscape-specific layout or behavior
//            super.init(imageString: "plane_landscape", initialScale: 2.0)
//        }
//        else
//        {
//            // Use portrait-specific layout or behavior
//            super.init(imageString: "plane", initialScale: 2.0)
//        }
        
        super.init(imageString: "plane_landscape", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        // constrain the player on the left boundary
//        if(position.x <= -320)
//        {
//            position.x = -320
//        }
//
//        // constrain the player on the right boundary
//        if(position.x >= 320)
//        {
//            position.x = 320
//        }
        
        if(position.y <= -320)
        {
            position.y = -320
        }
        
        // constrain the player on the right boundary
        if(position.y >= 320)
        {
            position.y = 320
        }
    }
    
    override func Reset()
    {
//        if Constants.isLandscape
//        {
//            // Use landscape-specific layout or behavior
//            position.x = -640
//        }
//        else
//        {
//            // Use portrait-specific layout or behavior
//            position.y = -640
//        }
        
        position.x = -640
        
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}
