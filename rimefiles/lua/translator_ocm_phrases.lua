-- lua/translator_ocm_phrases.lua
-- schema.yaml   replace   table_translator@ocm_phrases ----> lua_translator@*translator_ocm_phrases@ocm_phrases
-- 效果未完成！

local function translate(inp, seg, env) 
  env.tran =  env.tran or Component.Translator(env.engine, "","table_translator@ocm_phrases")

  -- local inp = string.gsub(inp, ";$", "")

  for cand in env.tran:query(inp, seg):iter() do
    local cand = cand  -- 不確定？  -- 於「Lua 5.5」須避免重新賦值 for 迴圈變數 cand。（for 迴圈中的控制變數是唯讀的。如果需要更改它，請在循環體中聲明一個同名的「局部變數」。）
    -- cand.comment = "『自定义』"
    -- cand.text = cand.text .. "、"
    -- cand.preedit = "、、"
    -- cand.preedit = cand.preedit .. ";"
    cand.type = "A_" .. cand.type  -- <   A_table  A_user_table
    yield(cand)
  end
end

return {func = translate}