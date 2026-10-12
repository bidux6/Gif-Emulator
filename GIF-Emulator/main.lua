function love.load()
    FrameWait = 0
    CurrentFrame = 1
Width, Height = love.graphics.getDimensions()
SpriteSheet = love.graphics.newImage("assets/spritesheet.png")
SSD = {["x"] = SpriteSheet:getWidth(), ["y"] = SpriteSheet:getHeight()}
Lines = {}
for v in love.filesystem.lines("assets/GridSize.txt") do
    table.insert(Lines, v)
end
Content1 = Lines[1]
Content2 = Lines[2]
SSQ = {["x"] = tonumber(Content1), ["y"] = tonumber(Content2)}
SSF = SSQ["x"] * SSQ["y"]
FrameRate = 10
love.window.setMode(Width, Height, {borderless = false, resizable = true, vsync = true})
end

function love.update(dt)
    FrameWait = FrameWait + dt
    Width, Height = love.graphics.getDimensions()
    if FrameWait >= 1/FrameRate then
        FrameWait = FrameWait - 1/FrameRate
        CurrentFrame = CurrentFrame + 1
        if CurrentFrame > SSF then
            CurrentFrame = 1
        end
    end
end

function love.keypressed(key)
    if key == "b" then
        local w, h, data = love.window.getMode()
        love.window.setMode(Width, Height, {borderless = not data.borderless, resizable = true, x = data.x, y = data.y, vsync = data.vsync})
    end
end

function GetQuads()
    local quad = love.graphics.newQuad(
        ((CurrentFrame - 1) % SSQ["x"]) * (SSD["x"] / SSQ["x"]),
        math.floor((CurrentFrame - 1) / SSQ["x"]) * (SSD["y"] / SSQ["y"]),
        SSD["x"] / SSQ["x"],
        SSD["y"] / SSQ["y"],
        SSD["x"],
        SSD["y"]
    )
    return quad
end

function love.draw()
    love.graphics.draw(SpriteSheet, GetQuads(), 0, 0, 0, Width*(1/SSD["x"])*SSQ["x"], Height*(1/SSD["y"])*SSQ["y"])
end