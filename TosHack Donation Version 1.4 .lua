if Start == 1 then
	level_1()
	sver = 2
	level_2()
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
