local player = owner

local MainFolder = game:GetService("ReplicatedStorage"):WaitForChild("MainFolder")
local Remote = MainFolder:WaitForChild("Mouse")
local Remote2 = MainFolder:WaitForChild("MouseInfo")
local Remote3 = MainFolder:WaitForChild("Remote3")

if player.Name == owner.Name then
    local lMouse = player:GetMouse()

    lMouse.KeyDown:Connect(function(key)
        Remote:FireServer("KeyDown", key)
    end)

    lMouse.KeyUp:Connect(function(key)
        Remote:FireServer("KeyUp", key)
    end)

    lMouse.Button1Down:Connect(function()
        Remote:FireServer("MouseButton1Down")
    end)

    lMouse.Button1Up:Connect(function()
        Remote:FireServer("MouseButton1Up")
    end)
    task.spawn(function()
        while true do
            wait(0.5)
            if workspace.CurrentCamera.CameraSubject ~= player.Character.Humanoid then
                workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
            end
        end
    end)    
    spawn(function()
        while true do
            game:GetService("RunService").Heartbeat:Wait()
            Remote2["r1"]:FireServer(lMouse.Hit)
            Remote3:FireServer(lMouse.Hit.p)
        end
    end)
end
