local NOTIFICATION_ID = 92796
local IMAGE_PATH = '$XDG_CONFIG_HOME/mpv/images/vinyl.png'

local function escape_quotes(s)
	return "'"..string.gsub(s, "'", '\'"\'"\'').."'"
end

local function notify(summary, text)
	os.execute(('notify-send -r %d -a mpv -i "%s" -- %s %s'):format(
		NOTIFICATION_ID,
		IMAGE_PATH,
		escape_quotes(summary),
		escape_quotes(text)
	))
end

mp.register_event('file-loaded', function()
	local data = mp.get_property_native('metadata')
	if data then
		notify(data['artist'], data['title'])
		return
	end

	local path = mp.get_property('path')
	if path then
		local file = path:gsub('^.-([^/]+)$', '%1')
		file = file:gsub('%....$', '')
		local dir = path:gsub('^.-([^/]+)/[^/]*$', '%1')
		notify(dir, file)
	end
end)
