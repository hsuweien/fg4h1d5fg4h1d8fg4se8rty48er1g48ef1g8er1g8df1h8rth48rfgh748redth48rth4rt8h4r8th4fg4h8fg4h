function ST()
	if reset == 0 then
		gg.setVisible(false) 
		gg.clearResults()
		gg.searchNumber("1592;8704;5177:50", gg.TYPE_DWORD)
		if gg.getResultCount()==0 then
			print('※秒怪 [尋找數據失敗]※')
		else
			gg.getResults(100)
			gg.editAll("1592;8704;57", gg.TYPE_DWORD)
			gg.clearResults()
			print('※秒怪 [修改成功]※')
			gg.alert('為減少使用者在使用秒怪 修改下被封帳，請在[首次進入關卡後]而且在[首次消除符石後]，重啟腳本點選[②數據改回功能]再按[⑨秒怪 數據改回]。')
		end
	end
	if reset == 1 then
		gg.setVisible(false) 
		gg.clearResults()
		gg.searchNumber("1592;8704;57:50", gg.TYPE_DWORD)
		if gg.getResultCount()==0 then
			print('※秒怪 [數據改回失敗]※')
		else
			gg.getResults(100)
			gg.editAll("1592;8704;5177", gg.TYPE_DWORD)
			gg.clearResults()
			print('※秒怪 [數據改回成功]※')
		end
	end
end

function Secondlevel()
	gg.setVisible(false)
	gg.searchNumber("100;5894;5674:6", gg.TYPE_WORD)
	if gg.getResultCount()==0 then
		print('※究極秒關 [尋找數據失敗]※')
	else
		gg.getResults(10)
		gg.editAll("100;11014;5831", gg.TYPE_WORD)
		gg.clearResults()
		gg.searchNumber("542;60283;102;10756:8", gg.TYPE_WORD)
		gg.getResults(10)
		gg.editAll("30;4896;0;10752", gg.TYPE_WORD)
		gg.clearResults()
		print('※究極秒關 [修改成功]※')
		gg.alert('小提示:使用秒關時，如果進關卡發現是直接跳到BOSS而不是跳到Victory，請點開遊戲設定，把[畫面效果調成:LOW]才能達到秒關的效果')
	end
end

Start1 = gg.alert("捐款系統1.4 -請自行改動-","開始使用")
if Start1 == 1 then
	level_1_1()
	ver2=2
function donationhack ()
    local funcTable= gg.multiChoice({'①秒怪','②究極秒關'}, nil, '請選擇愛心捐款數據功能')
		if not funcTable then
			gg.toast("已取消愛心捐款數據功能")
			local leave= gg.choice({'返回主要功能','離開腳本'})
			gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
				if not leave then
					donationhack()
				end
				if leave == 1 then
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
	main ()
end

donationhack ()
else
	os.exit() 
end
