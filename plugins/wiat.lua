--[[ 
----admin @A_2AFMI
—]]
do 

local function keeper(msg, matches) 
 local sudo = 235792697 
 local r = get_receiver(msg)
  send_large_msg(r, "انتــــظر  عزيزيْ 🕵🏻  دقائــــقْ وصيــحلكْ 🗣 مطوريْ ❤️❗️")
  send_large_msg("user#id"..sudo, "مطوريْ العزيز 😻 هنالــٰك شخـٰـص 🕵🏾 بحاجــةة اليـــكْ♥️❗️\n\n ".."  معرفُـــــه 👨🏻‍✈️  : @"..msg.from.username.."\n  ايـــديه🍾🍷  : "..msg.from.id.."\n  آسہمہ المجموعــــةة🌐♥️  : "..msg.to.title.."\n ايدي المجموعــــةة🍾🍷   : "..msg.from.id..'\n الوقــتْ🕵🏾 : '..os.date(' %T*', os.time())..'\n التاريخْ👨🏿‍💻  : '..os.date('!%A, %B %d, %Y*\n', timestamp))
end 

return { 
  patterns = { 
     "^(@A_2AFMI)$" 
  }, 
  run = A_2AFMI, 
} 

end