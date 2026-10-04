local Index, Old_Loadstring = 0, loadstring;
getgenv()["loadstring"] = newcclosure(function(Chunk, ...)
if typeof(Chunk) == "string" then
writefile("loadstring" .. tostring(Index) .. ".txt", Chunk)
end; Index += 1
return Old_Loadstring(Chunk, ...)
end)
