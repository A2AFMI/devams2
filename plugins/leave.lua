local function run(msg, matches) 
if matches[1] == 'اطردني' then 
local hash = 'kick:'..msg.to.id..':'..msg.from.id 
     redis:set(hash, "waite") 
      return 'عزيزي🗣❗️ \nمعـرف❗️ @'..msg.from.username..'\nاذا اردت الخروج من هذه المجموعة 🌐  ارسل لي (نعم) ✔️ وسوف اقوم🕵🏾 باخراجك منها واذا لا تريد الخروج  ارسل لي (لا ) ✖️😽❤️❗️' 
    end 

    if msg.text then 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
      if msg.text:match("^نعم$") and redis:get(hash) == "waite" then 
     redis:set(hash, "ok") 
   elseif msg.text:match("^لا$") and redis:get(hash) == "waite" then 
   send_large_msg(get_receiver(msg), "اوك يله ابقى 🖐🏽 عشق حياتي🌚🍷") 
     redis:del(hash, true) 

      end 
    end 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
    if redis:get(hash) then 
        if redis:get(hash) == "ok" then 
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false) 
         return 'تدلل يروحي راح 😽اشمرك يم جبل احد🙊🍾🍷 ('..msg.to.title..')' 
        end 
      end 
    end 

return { 
  patterns = { 
  '^(اطردني)$', 
  '^(نعم)$', 
  '^(لا)$' ,
  '^[#!/](اطردني)$', 
  '^[#!/](نعم)$', 
  '^[#!/](لا)$'
  }, 
  run = run, 
}