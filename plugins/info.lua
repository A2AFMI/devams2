-----by @A_2AFMI
----info
do 
function A_2AFMI(msg, matches) 
local reply_id = msg['id'] 

local keeper = '|⭕️| ➖ ايديك |💋| : '..msg.from.id..'\n'
..'|⭕️| ➖ معرفك عزيزي |🍾🍷|: @'..msg.from.username..'\n'
..'|⭕️| ➖ اسمك الاول  |😻| : '..(msg.from.first_name or '')..'\n'
..'|⭕️| ➖ اسمك الثانيْ |🏜| : '..(msg.from.lastname or "ماتخليلك اسم 😹"    )..'\n'
..'|⭕️| ➖ ايدي المجموعة |❤️| : '..msg.to.id..'\n'
..'|⭕️| ➖ اسم المجموعة |🌐| : '..msg.to.title..'\n'
..'|⭕️| ➖ رقمك |🤳🏾| : '..(msg.from.phone or "لا يوجـــد🙁"..'\n'
..'|⭕️| ➖ الرساِئل |🎁| : '..msg.text..'\n'
..'|⭕️| ➖ الوقُت  |🍷💋|: '..os.date(' %T', os.time()))..'\n'
..'|⭕️| ➖ التاريخ |🔥| : '.. os.date('!%A %B:%d:%Y\n', timestamp)..'\n' 
.."قنــاة ســورس DevAMS🕵🏻 @il_20 🌚🍷".."\n"
reply_msg(msg.id, keeper, ok_cb, false)

end 

return { 
patterns = { 
"^معلوماتي" 
}, 
run = A_2AFMI
} 

end
