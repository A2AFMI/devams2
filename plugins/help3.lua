do

local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'م3' then
local S = [[  
🗽̶D̶e̶v̶A̶M̶S̶🗽
🖍الاوامر الاخرى هي:🖍
___________|🎡|_____________
⛩- معلوماتي ☜ لاظهار معلوماتك
💈-موقعي  ☜ لاظهار موقعك
💈-مغادرة  ☜ ليتم طردك
💡- ايدي  ☜ لاظهار ايدي المجموعة
⚙️- الاعدادات ☜ لاظهار اعدادات المجموعة 
🏁- ايدي بالرد ☜ لاظهار ايديك
🚧- الادمنيه   ☜ لاظهار الادمنية

🛰- الاصدار  ☜ لرؤية اصدار السورس
📟- معلومات المجموعه ☜ لاظهار معلومات المجموعة
___________|🎡|_____________
🗯DEV🔊@A_2AFMI
🗯DEVBOT🔊@A_2AFMIBOT
🗯DEVCHANNEL🔊@il_20 

]]
reply_msg(reply_id, S, ok_cb, false) 
end

if not is_momod(msg) then
local S = "  للمشرفين 🕵🏻 فقط عزيزي♥️❗️ "
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م3)$",
},
run = run 
}
end