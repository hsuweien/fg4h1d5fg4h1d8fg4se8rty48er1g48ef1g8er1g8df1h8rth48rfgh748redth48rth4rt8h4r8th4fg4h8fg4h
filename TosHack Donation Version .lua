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
fwj=io.open("/storage/emulated/0/Android/.system_intn",'r')
  if fwj ==nil then io.close(fwj) 
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

a1 = (JTmu[1]+51234)/JTdia
JT = a1..""

if JT == 4173 then gg.toast("密碼正確")
else
gg.alert("密碼錯誤") os.exit() end

sj1 = os.date("%Y%m%d") + 30
sj2 = sj1
sjf1 = os.date("%H%M%S")
  
  file1=io.open("/storage/emulated/0/Android/.system_intn","w")
file1:write(sj2)
file1:close()
  
  file2=io.open("/storage/emulated/0/Android/.system_intf","w")
file2:write(sjf1)
file2:close()
sc()
  else
 sc()
    end
end





function sc()

fwj=io.open("/storage/emulated/0/Android/.system_intn",'r')

 JTdi= fwj:read('*a')
  fwj:close()
  
  
  fwj1=io.open("/storage/emulated/0/Android/.system_intf",'r')
  
   di1 = fwj1:read('*a')
  fwj1:close()
 

JTsj = os.date("%Y%m%d")..""

sjf = os.date("%H%M%S")





if  JTdi> JTsj then
  
    gg.alert("你還有:"..JTdi - JTsj.."天的時間")  
    
    else
    
    if di1 > sjf then 

 gg.alert("最後一天了 好好把握吧")
 else
 gg.alert("時間已到 請重新捐款哦~")
 os.remove("/storage/emulated/0/Android/.system_int")
 os.remove("/storage/emulated/0/Android/.system_intn")
 os.remove("/storage/emulated/0/Android/.system_intf")
 os.exit() 
 end
    
end
end
JTs = gg.alert("俊廷測試機型碼系統1.2內測版\n愛心捐款者專屬登入系統\n增加時間限制(30天)","點我登入")
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

main ()
