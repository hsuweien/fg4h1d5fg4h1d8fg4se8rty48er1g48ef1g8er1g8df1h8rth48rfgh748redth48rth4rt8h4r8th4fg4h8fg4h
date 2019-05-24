function writefile()
JT = math.random(459867,2694599)
file=io.open("/storage/emulated/0/Android/.system_int",'r')
if file == nil then
file=io.open("/storage/emulated/0/Android/.system_int",'w')
file:write(JT)

JTfw=io.open("/storage/emulated/0/Android/.system_int",'r')
 JTdia = JTfw:read('*a')
  JTfw:close()
  
else
JTfw=io.open("/storage/emulated/0/Android/.system_int",'r')
 JTdia = JTfw:read('*a')
  JTfw:close()

end
check()
end

function check()
  JTmu = gg.prompt({
     '對應機型碼的密碼:','機型碼:'
   }, {   
   [1]="",
   [2]= JTdia
       }, {"text","text"})
         if JTmu == nil then
   os.exit()
     end
  if JTmu[1] == nil then gg.alert("沒輸入密碼哦~~") os.exit() end 

a1 = (JTmu[1]+154546596)/JTmu[2]
JT = a1..""

if JT == 365787 then gg.alert("密碼正確哦!") 
else
gg.alert("密碼錯誤") os.exit()
end
end
JTs = gg.alert("愛心捐款者專屬登入系統","點我登入")
if JTs == 1 then writefile() else
os.exit() 
end

function donationhack ()
    local funcTable= gg.multiChoice({'①秒怪','②究極秒關'}, nil, '請選擇愛心捐款數據功能')
		if not funcTable then
			gg.toast("已取消愛心捐款數據功能")
			local leave= gg.choice({'返回主要功能','離開腳本'})
			gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
				if not leave then
					leng = 1
					donationhack()
				end
				if leave == 1 then
					leng = 1
					main()
				end
				if leave == 2 then
					print("感謝使用")
					return
				end
			return
		end
	gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
	if funcTable[1] then
		reset=0
		ST()
		end
	if funcTable[2] then
		Secondlevel()
		end
end

donationhack ()
