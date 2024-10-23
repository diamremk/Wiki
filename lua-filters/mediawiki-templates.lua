-- pandoc-lua-filter-mediawiki-templates.lua
local templates = {
    -- Define some example templates.
    -- Each template can have a function that returns a string based on the parameters provided.
    hello = function(args)
        local name = args[1] or "World"
        return "Hello, " .. name .. "!"
    end,

    link = function(args)
        local text = args[1] or "link"
        local url = args[2] or "#"
        return string.format("[%s](%s)", text, url)
    end
}

-- Function to parse template invocation like {{TemplateName|param1|param2|...}}
local function parse_template_invocation(template_str)
    local name, params_str = template_str:match("^{{([^|]+)|(.*)}}$")
    if not name then
        -- Try to match without parameters
        name = template_str:match("^{{([^|]+)}}$")
        params_str = ""
    end

    if not name then return nil end

    -- Split the parameters by '|'
    local params = {}
    for param in params_str:gmatch("[^|]+") do
        table.insert(params, param)
    end

    return name, params
end

-- Function to replace template invocation with processed content
local function process_template(template_str)
    local name, params = parse_template_invocation(template_str)

    if not name then
        -- Return the original string if no template was found
        return template_str
    end

    -- Check if the template exists in the predefined templates
    local template_func = templates[name]
    if template_func then
        return template_func(params)
    else
        -- If the template is not defined, return the original template invocation
        return template_str
    end
end

-- Main filter function for Pandoc
local function process(elem)

    -- Look for templates in the form of {{TemplateName|param1|param2}}
    if elem.text:match("{{[^}]+}}") then
        local new_text = elem.text:gsub("{{[^}]+}}", process_template)
        return pandoc.Str(new_text)
    end
    return nil
end

return {{Str = process}}