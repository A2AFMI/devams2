--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    ---ch  @il_20         
▀▄ ▄▀                                      ▀▄ ▄▀      -----cuores DevAMS           
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀         --by @a_2afmi  :  اضــف مطور   ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
—]]

local function getindex(t,id) 
for i,v in pairs(t) do 
if v == id then 
return i 
end 
end 
return nil 
end 
 
function reload_plugins( ) 
  plugins = {} 
  load_plugins() 
end 
   function run(msg, matches) 
    if tonumber (msg.from.id) == 218164567 then 
       if matches[1]:lower() == "رفع مطور" then 
          table.insert(_config.sudo_users, tonumber(matches[2])) 
      print(matches[2] ..'\n ☑️تم رفعه مطور 🕵🏻 ') 
     save_config() 
     reload_plugins(true) 
      return matches[2] ..'\n ☑️تم رفعه مطور 🕵🏻 ' 
   elseif matches[1]:lower() == "تنزيل مطور"  then 
      local k = tonumber(matches[2]) 
          table.remove(_config.sudo_users, getindex( _config.sudo_users, k)) 
      print(matches[2] ..'\n ☑️تم تنزيله من قائمة المطورين 🐅🚶 ') 
     save_config() 
     reload_plugins(true) 
      return matches[2] ..'\n ☑️تم تنزيله من قائمة المطورين 🐅🚶 ' 
      end 
   end 
end 
return { 
patterns = { 
"^(رفع مطور) (%d+)$", 
"^(تنزيل مطور) (%d+)$",
"^[#!/](رفع مطور) (%d+)$", 
"^[#!/](تنزيل مطور) (%d+)$"
}, 
run = run
}