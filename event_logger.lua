-- Event Logger v1 by TinyDeskEngie1
-- Surprisingly, it logs events

event = require("event")
shell = require("shell")

args, options = shell.parse(...)

log = io.open("event_logger.log", "w")

while true do
  local values = {event.pull()}
  local line = ""
  
  if values[1] == "interrupted" then
    log:close()
    os.exit()
  end

  if options.v then
    for i, v in ipairs(values) do
      line = line .. v .. "\t"
    end
  else
    line = values[1]
  end
  line = line .. "\n"

  if not options.q then
    io.stdout:write(line)
  end

  if options.w or options.q then
    log:write(line)
  end
end
  