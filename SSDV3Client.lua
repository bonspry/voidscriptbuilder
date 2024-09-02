local event = game.ReplicatedStorage.SDV3.attacksremote
local event2 = game.ReplicatedStorage.SDV3.mousehitremote
local event3 = game.ReplicatedStorage.SDV3.mouseclickremote
local torsovalue = game.ReplicatedStorage.SDV3.torsovalue
local mouse = game.Players.LocalPlayer:GetMouse()

mouse.KeyDown:Connect(function(key)
    if key == "w" or key == "a" or key == "s" or key == "d" or key == " " then
        event:FireServer(key, true)
    elseif key == "z" or key == "q" or key == "e" or key == "r" then
        event:FireServer(key)
    end
end)

task.spawn(function()
    while true do
        wait(0.05)
        event2:FireServer(mouse.Hit.Position,mouse.Target,game.Workspace.CurrentCamera.CFrame.LookVector)
        if game.Workspace.CurrentCamera.CameraSubject ~= torsovalue.Value then
            game.Workspace.CurrentCamera.CameraSubject = torsovalue.Value
        end
    end
end)

mouse.Button1Down:Connect(function()
    event3:FireServer()
end)

mouse.KeyUp:Connect(function(key)
    if key == "w" or key == "a" or key == "s" or key == "d" or key == " " then
        event:FireServer(key, false)
    end
end)
