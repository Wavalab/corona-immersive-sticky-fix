if system.getInfo("platform") == "android" then
  native.setProperty("androidSystemUiVisibility", "immersiveSticky")
end

Runtime:addEventListener("system", function(event)
  local type = event.type
  if type == "applicationResume" then
    if system.getInfo("platform") == "android" then
      native.setProperty("androidSystemUiVisibility", "immersiveSticky")
    end
  end
end)

Runtime:addEventListener("resize", function()
  if system.getInfo("platform") == "android" then
    native.setProperty("androidSystemUiVisibility", "immersiveSticky")
  end
end)
