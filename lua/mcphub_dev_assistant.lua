local mcphub = require('mcphub')

mcphub.add_tool("dev_assistant", {
  name = "generate_code_snippet",
  description = "Generate code snippet from description or requirement",
  inputSchema = {
    type = "object",
    properties = {
      description = {
        type = "string",
        description = "Deskripsi atau requirement kode yang diinginkan"
      },
      language = {
        type = "string",
        description = "Bahasa pemrograman (opsional)",
        default = "lua"
      }
    },
    required = {"description"}
  },
  handler = function(req, res)
    -- Placeholder: Anda bisa integrasikan LLM atau logic lain di sini
    local code = string.format("-- Contoh kode untuk: %s\nprint('Hello World')", req.params.description)
    return res:text(code, "text/x-" .. (req.params.language or "lua")):send()
  end
})

return true
