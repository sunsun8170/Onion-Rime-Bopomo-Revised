--- comment 附加 Unicode 和 url_encode 編碼

----------------------------------------------------------------------------------------
local utf8_comment = require("filter_cand/utf8_comment")
----------------------------------------------------------------------------------------

local function tran_utf8_comment(tran)
  for cand in tran:iter() do
    local cand_text = cand.text  -- cand.text ~= "" and cand.text or "〖空碼〗"
    -- --- 寫法一
    -- local cand = cand  -- 於「Lua 5.5」須避免重新賦值 for 迴圈變數 cand。（for 迴圈中的控制變數是唯讀的。如果需要更改它，請在循環體中聲明一個同名的「局部變數」。）
    -- if utf8.len(cand_text) == 1 then
    --   cand = UniquifiedCandidate(cand, "uniq_unicode", cand_text, utf8_comment(cand_text) .. cand.comment)
    -- end
    -- -- local cand = UniquifiedCandidate(cand, "uniq_unicode", cand_text, utf8_comment(cand_text) .. cand.comment)
    -- yield(cand)
    --- 寫法二
    local u_cand = utf8.len(cand_text) == 1 and UniquifiedCandidate(cand, "uniq_unicode", cand_text, utf8_comment(cand_text) .. cand.comment) or cand
    yield(u_cand)
    -- --- 寫法三
    -- yield( utf8.len(cand_text) == 1 and UniquifiedCandidate(cand, "uniq_unicode", cand_text, utf8_comment(cand_text) .. cand.comment) or cand )
  end
end

----------------------------------------------------------------------------------------

return tran_utf8_comment