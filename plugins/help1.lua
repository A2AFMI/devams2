do

local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'م1' then
local S = [[  
 🗽̶D̶e̶v̶A̶M̶S̶🗽
    🏌🏿‍♀️الاوامر الخاصة|⚓️| بالادارة🏌🏿‍♀️
🔺_________|⚡️|___________🔻
◽️•––( حظر+المعرف ⛵️)لحظر العضو•   
◽️•––(الغاء الحظر 🛶) لإزاله الحظر•      ◽️•––( كتم+المعرف 🏗 ) لكتم العضو•
 
◽️•––( كتم+المعرف⛽️) لأزالة الكتم*
◽️•––( رفع ادمن 🗼) لرفع الادمن*       ◽️•––( تنزيل ادمن 🎡) لتنزيلـــه *

◽️•––( رفع اداري 🏚) لرفع الاداري$
◽️•––( تنزيل اداري  ⛱) لتنزيلـــه$
◽️•––( الرابط ⚱️) لاظهار الرابط$

◽️•––( ضع رابط 🛰) لحفظ الرابط!!
◽️•––(ضع ترحيب 💂🏾)لوضع ترحيب!!                   
◽️•––( ضع مذكره🎎) لحفظ مذكرة!!

◽️•––( ضع ترحيب 🏹)لوضع ترحيب&
◽️•––( مذكرتي 🎏) لاظهار المذكرة&
◽️•––( ضع وصف ♻️) لتعيين وصف&         
🔺___________|⚡️|__________🔻
🗯DEV🔊@A_2AFMI
🗯ꝄDEVBOT🔊@A_2AFMIBOT
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
"^(م1)$",
},
run = run 
}
end