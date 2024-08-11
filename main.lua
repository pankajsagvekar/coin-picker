function love.load()
    player = {
        x = 200,
        y = 200,
        w = 60,
        h = 60,
        speed = 200
    }
end

function love.update(dt)
    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
    elseif love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
    elseif love.keyboard.isDown("s") then
        player.y = player.y + player.speed * dt
    elseif love.keyboard.isDown("w") then
        player.y = player.y - player.speed * dt
    end
end

function love.draw()
    love.graphics.rectangle("fill", player.x, player.y, player.w, player.h)
end
