#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta;
    
    {
        if (timeSinceObstacle >2.0f)
            
            timeSinceObstacle = 0.0f;
        
    }

}

// put new methods here
-(void)touchBegan:(UITouch*)touch withEvent:(UIEvent *)event {
    //this will get called every time the player touches the screen
    [character flap];
    [self addObstacle];
    timeSinceObstacle = 1.0f;

    
}

@end
