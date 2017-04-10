--[[ 
قفل الوسائط
@A_2AFMI
—]] 
do 

local function pre_process(msg) 
local mohammed = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local moody = 'mate:'..msg.to.id 
    if redis:get(moody) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = " عزيزي😼 ["..msg.from.first_name.."]".."\n".." (الصور_والفيديوهات_والصوتيات) تم منعها ✖️ مسبقاً  في المجموعة 🌐 لا تكرر الامر كي 😽 لا تجبرني على طردك 🕵🏻 اتبع القوانين♥️❗️".."\n".." ♦️ Us : @"..(msg.from.username or " ") 
reply_msg(mohammed, test, ok_cb, true) 

end 

        return msg 
    end 

local function MOHAMMED(msg, matches) 
local mohammed = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local ams= 'mate:'..msg.to.id 
                    redis:set(th3boss, true) 
local boss = 'تم بالفعل #قفل |🔐| الوسائط في 🕵🏻 هذه المجموعة❤️❗️ \n🔲♦️Us : @'..(msg.from.username or " لا يوجد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local moody = 'للمشرفين  🕵🏻 فقط عزيزي♥️❗️' 
reply_msg(mohammed, moody, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then 
      local th3boss= 'mate:'..msg.to.id 
      redis:del(th3boss) 
local boss = 'تم بالفعل #فتح |🔓| الوسائط في 🕵🏻 المجموعة♥️❗️\n🔲♦️Us : @'..(msg.from.username or " لا يوجد ")..'\n🔲♦️ID : '.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local moody= ' للمشرفين 🕵🏻 فقــط عزيزي♥️❗️ ' 
reply_msg(mohammed, moody, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  }, 
run = A_2AFMI, 
    pre_process = pre_process 
} 

end
