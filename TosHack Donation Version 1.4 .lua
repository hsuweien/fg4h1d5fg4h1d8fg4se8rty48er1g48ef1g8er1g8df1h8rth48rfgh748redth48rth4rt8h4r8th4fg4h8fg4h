function level_1_1()
local characterIndex = {"A","B","C","D","E","F","G","H","J","K","M","N","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9"}
local keyLength = 12
local keys = 1 
	for genKeys = 1, keys do
		local key = ""
		local isLowercase = nil
		for genKey = 1, keyLength do
			math.randomseed(genKeys * genKey + ((math.pi * os.time()) / math.sqrt(math.pi * genKey * genKeys)))
			if math.random(1,2) == 1 then
				isLowercase = true
			else
				isLowercase = false
			end
			if isLowercase then
				key = key..(string.lower(characterIndex[math.random(1, #characterIndex)]))
			else
				key = key..(string.upper(characterIndex[math.random(1, #characterIndex)]))
			end
		end
		KEY = key
	end	
	local ver2 = gg.choice({'捐款專用腳本'}, nil, '選擇登入腳本')
	if not ver2 then
		os.exit()
	end
	if ver2 == 2 then
		sver = 2
		level_2()
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
