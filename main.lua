--Devin Thompson 2-11-25
function love.load()

    xclick=0
    yclick=0
    
    gamestate=0

    love.graphics.setDefaultFilter('nearest','nearest',1)
    banner1 = love.graphics.newImage("banner1.png")
    background = love.graphics.newImage("skyBackground.png")
    width = banner1:getWidth()
    height = banner1:getHeight()

    love.graphics.setBackgroundColor( 0, 0, 0)
    --text settings
    font1 = love.graphics.newFont("CCRedAlert.ttf",60)
    font2 = love.graphics.newFont("CCRedAlert.ttf",25)
    
end

function love.update(dt)
  
end

function love.draw()
    --start game on menu/start screen
    if gamestate==0 then
        --START SCREEN
        --start button and background
        love.graphics.draw(background, 0, 0, 0, 2.2, 2.2)
        love.graphics.draw(banner1, 300, 300, 0, 3, 3)
        love.graphics.draw(banner1, 300, 375, 0, 3, 3)
        --title
        love.graphics.setColor(1, 1, 1) 
        love.graphics.setFont(font1)
        love.graphics.print("FOREST", 298, 100)
        love.graphics.print("BUILDER", 288, 160)
        --button text 
        love.graphics.setColor(0, 0, 0) 
        love.graphics.setFont(font2)
        love.graphics.print("START", 361, 313)
        love.graphics.print("SETTTINGS", 335, 388)
        love.graphics.setColor(1, 1, 1)
        --start button click detection
        if xclick > 300 then
            if yclick > 300  then
                if xclick < 300+width*3 then
                    if yclick < 300 + height*3 then
                        gamestate=1
                        --TRANSITION INTO GAME
                    end
                end
            end
        end

        if xclick > 300 then
            if yclick > 375  then
                if xclick < 300+width*3 then
                    if yclick < 375 + height*3 then
                        gamestate=2
                        --TRANSITION INTO SETTINGS
                    end
                end
            end
        end

    elseif gamestate==1 then
        --GAMESTATE CHANGES TO GAME HERE
        love.graphics.print("gamestate1 reached")
        
    elseif gamestate ==2 then
        --SETTINGS
        love.graphics.print("gamestate2 reached")
    end
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 then -- Left mouse button
        xclick = x
        yclick = y
    end
end

