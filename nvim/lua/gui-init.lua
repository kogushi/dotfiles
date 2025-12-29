-- GuiFonts for each environment
local env = require('my.detect_environment').detect()

if env.is_windows then
	vim.o.guifont="MyricaM M:h12"
end

