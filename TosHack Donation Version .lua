function writefile()
JT = math.random(459867,2694599)--從459867到2694599範圍中隨機生一個(機型碼=(暫存檔))
file=io.open("/storage/emulated/0/Android/.system_int",'r')--檢測是否有暫存檔
if file == nil then
file=io.open("/storage/emulated/0/Android/.system_int",'w')--若沒有則生成一個暫存檔
file:write(JT)

JTfw=io.open("/storage/emulated/0/Android/.system_int",'r')--檢測暫存檔內容
 JTdia = JTfw:read('*a')
  JTfw:close()
  
else
JTfw=io.open("/storage/emulated/0/Android/.system_int",'r')--二次檢查暫存檔內容
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
  if JTmu[1] == nil then gg.alert("沒輸入密碼哦~~") os.exit() end --沒輸入密碼提示語句

a1 = (JTmu[1]+154546596)/JTmu[2]--算法
JT = a1..""

if JT == 365787 then gg.alert("密碼正確哦!") --密碼正確提示語句
else
gg.alert("密碼錯誤") os.exit()--密碼錯誤提示語句
end
end
JTs = gg.alert("俊廷測試機型碼系統","開始測試")
if JTs == 1 then writefile() else
os.exit() 
end
--↓↓源腳本↓↓
	
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
