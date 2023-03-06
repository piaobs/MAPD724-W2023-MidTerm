import GameplayKit
import SpriteKit

class Island : GameObject
{
    // initializer / constructor
    init()
    {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func Start()
    {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5.0
        Reset()
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
//            if(position.x <= -876)
//            {
//                Reset()
//            }
//        }
//        else
//        {
//            // Use portrait-specific layout or behavior
//            if(position.y <= -876)
//            {
//                Reset()
//            }
//        }
        if(position.x <= -876)
        {
            Reset()
        }

    }
    
    override func Reset()
    {
        
//        if Constants.isLandscape
//        {
//            // Use landscape-specific layout or behavior
//            position.x = 876
//        }
//        else
//        {
//            // Use portrait-specific layout or behavior
//            position.y = 876
//        }
        position.x = 876
        
        // get a pseudo random number
//        let randomX:Int = (randomSource?.nextInt(upperBound: 626))! - 313
//        position.x = CGFloat(randomX)
//        isColliding = false
        let randomY:Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.y = CGFloat(randomY)
        isColliding = false
    }
    
    // public method
    func Move()
    {
        position.x -= verticalSpeed!
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
        
    }
}
