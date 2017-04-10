كيفيه تنصيب احدث سورس عراقي DevAMS

اولا افتح ترمنال وخلي هذا

 sudo apt-get update

وبعده هذا 

redis-server

عوفه مفتوح وفتح ترمنال جديد
وخلي هذا

sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev

وبعده هذا 

 git clone https://github.com/A2AFMI/devams2

وبعده هذا

 cd DEVAMS

وهذ 

 chmod +x launch.sh
 
وبعدين هذا

./launch.sh install

وهذا

 ./launch.sh
بعدها يطلب رقم ودخل ررقم ومبروك عليك البوت 
بعدها افتح ترمنال جديد واكتب 
redis-server

 ودوس انتر 
 وسوي رن من ملف لانج
بعد متسوي رن افتح ترمنال جديد واكتب 
 
 cd DEVAMS
 
انتر وبعدها هل امر 

 bash DEVAMS.sh -t
 
 انتظر 5 ثواني يشتغل بوت 
هذا ملف يقلل وكفات بوت 
