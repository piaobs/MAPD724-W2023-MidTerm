import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    // constructor / initializer
    init()
    {
//        if Constants.isLandscape
//        {
//            // Use landscape-specific layout or behavior
//            super.init(imageString: "ocean_landscape", initialScale: 2.0)
//        }
//        else
//        {
//            // Use portrait-specific layout or behavior
//            super.init(imageString: "ocean", initialScale: 2.0)
//        }
        
        super.init(imageString: "ocean_landscape", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = Layer.ocean.rawValue
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
//        if Constants.isLandscape
//        {
//            // Use landscape-specific layout or behavior
//            if(position.x <= -2253)
//            {
//                Reset()
//            }
//        }
//        else
//        {
//            // Use portrait-specific layout or behavior
//            if(position.y <= -2253)
//            {
//                Reset()
//            }
//        }
 
        if(position.x <= -2253)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
//        if Constants.isLandscape
//        {
//            // Use landscape-specific layout or behavior
//            position.x = 2253
//        }
//        else
//        {
//            // Use portrait-specific layout or behavior
//            position.y = 2253
//        }
        
        position.x = 2253
    }
    
    func Move()
    {
//        if Constants.isLandscape
//        {
//            // Use landscape-specific layout or behavior
//            position.x -= verticalSpeed!
//        }
//        else
//        {
//            // Use portrait-specific layout or behavior
//            position.y -= verticalSpeed!
//        }
        
        position.x -= verticalSpeed!
    }
}
