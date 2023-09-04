local function shell_execute(command)
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    return result
end

local function create_temp_file_name()
    -- Use the 'os.tmpname' function to generate a temporary file name
    return os.tmpname() .. ".png"
end

function CodeBlock(el)
    -- Check if the block's class is 'imagemagick'
    if el.classes[1] == "imagemagick" then
        -- Generate a temporary filename for the image
        local temp_img = create_temp_file_name()
        -- Append the temp file name to the original command
        local cmd = el.text .. " " .. temp_img
        -- Execute the modified command
        shell_execute(cmd)
        -- Return a paragraph containing the generated image.
        return pandoc.Para({pandoc.Image({}, temp_img)})
    end
end
