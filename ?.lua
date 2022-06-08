local function get_payload()
    local payload = [[
        local function get_payload()
            local f = io.open("]]..arg[1]..[[");
            local p = f:read("*all");
            f:close();
            return p;
        end
        local p = get_payload();
        local f = load(p);
        f();
    ]]
    return payload
end
