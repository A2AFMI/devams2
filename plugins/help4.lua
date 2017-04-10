do

local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'م المطور' then
local S = [[  
🗽̶D̶e̶v̶A̶M̶S̶🗽     
 🙇🏿  اوامر المطور  🙇🏿
🔺_________|⚡️|___________🔻
🖌-تفعيل - لتفعيل البوت 🕴✨
🖌-تعطيل - لتعطيل البوت 🏌🎶

✏-رفع المدير - لرفع المدير👣
✏-رفع مطور + الايدي - لاضافة مطور
✏-حظر عام - لحظـر العضو عام🌞

🖍-الغاء العام -ازالة الحظر العام🎭🛰
🖍-ﺭد اضف - لاضافة رد 🌀♻️
🖍-رد حذف - لحذف رد ➰✖️
🖍-تحديث - لتحديث السيرفر🎶🔸

✏️-تفعيل ملف + الاسم - لتفعيله♻️
✏️-تعطيل ملف + الاسم - لتعطيله🗯
✏️-الـردود - لاظﮫار قائمة الردود🕸☄

🖌-غادر - لاخراج البوت 🔇✨
🖌-حذف ملف + الاسم - لحذف ملف من السيرفر🍹
🔺___________|⚡️|__________🔻
🗯ꝄDEV🔊@A_2AFMI
🗯ꝄDEVBOT🔊@A_2AFMIBOT
🗯DEVCHANNLEL🔊@il_20 
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
"^(م المطور)$",
},
run = run 
}
end
