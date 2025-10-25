local NOTIFICATION_ID = 92796
local IMAGE_PATH = '$XDG_CONFIG_HOME/mpv/images/vinyl.png'

---@param head string
---@param body string
local function notify(head, body)
	os.execute(('notify-send -r %d -a mpv -i "%s" -- %s %s'):format(
		NOTIFICATION_ID,
		IMAGE_PATH,
		"'" .. head:gsub("'", '\'"\'"\'') .. "'",
		"'" .. body:gsub("'", '\'"\'"\'') .. "'"
	))
end

mp.register_event('file-loaded', function()
	local meta = mp.get_property_native('metadata')
	if meta['artist'] and meta['title'] then
		notify(meta['artist'], meta['title'])
		return
	end

	local path = mp.get_property('path')
	local dir = path:gsub('^.-([^/]+)/[^/]*$', '%1')
	local file = path:gsub('^.-([^/]+)$', '%1'):gsub('%....$', '')
	notify(dir, file)
end)
