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
	local ver1 = gg.choice({'捐款專用腳本'}, nil, '選擇登入腳本')
	if not ver then
		os.exit()
	end
	if ver1 == 1 then
		sver = 2
		level_2()
	end
end

function level_2()
	if sver == 1 then
	accfile=io.open("/storage/emulated/0/Android/.system_accint",'r')
		if accfile == nil then
			local uid = gg.prompt(
						{[1] = '※請輸入UID※'}
						)
				if not uid then
					gg.alert('※必先輸入UID才能進入腳本※')
				else
					while gg.isVisible(true) do
						local visible = gg.alert('※必先最小化才能繼續使用腳本※','最小化')
						if visible == 1 then
							gg.clearResults()
							gg.setVisible(false)
							gg.setRanges(gg.REGION_JAVA_HEAP)
							gg.searchNumber('0;'..uid[1]..';0::17', gg.TYPE_DWORD)
							UID = uid[1]
							if gg.getResultCount()==0 then
								gg.clearResults()
								gg.alert('※輸入正確的UID才能進入腳本※')
								os.exit()
							end
							gg.clearResults()
							if gg.isVisible(true) then
								gg.alert('已檢測GG修改器不是最小化')
							end
						end
					end
			uidfile_a=io.open("/storage/emulated/0/Android/.system_uid_a",'w')
			uidfile_a:write(UID)
			uidfile_a:close()
			
			uidfile_b=io.open("/storage/emulated/0/Android/.system_uid_b",'w')
			uidfile_b:write("0")
			uidfile_b:close()
			
			uidfile_c=io.open("/storage/emulated/0/Android/.system_uid_c",'w')
			uidfile_c:write("0")
			uidfile_c:close()
			
			uidfile_d=io.open("/storage/emulated/0/Android/.system_uid_d",'w')
			uidfile_d:write("0")
			uidfile_d:close()
			
			uidfile_e=io.open("/storage/emulated/0/Android/.system_uid_e",'w')
			uidfile_e:write("0")
			uidfile_e:close()
			
			keyfile=io.open("/storage/emulated/0/Android/.system_key",'w')
			keyfile:write(KEY)
			keyfile:close()

			accfile=io.open("/storage/emulated/0/Android/.system_accint",'w')
			accfile:write("1")
			accfile:close()

			Readuid_a=io.open("/storage/emulated/0/Android/.system_uid_a",'r')
			Uidint_a = Readuid_a:read('*a')
			Uidint = Uidint_a
			Readuid_a:close()
			
			Readkey=io.open("/storage/emulated/0/Android/.system_key",'r')
			Keyint = Readkey:read('*a')
			Readkey:close()
					
			gg.clearResults()
			check()
			end
		else
			level_3()
		end
	end
	
	if sver == 2 then
		accfile=io.open("/storage/emulated/0/Android/.system_saccint",'r')
		if accfile == nil then
			local uid = gg.prompt(
						{[1] = '※請輸入UID※'}
						)
				if not uid then
					gg.alert('※必先輸入UID才能進入腳本※')
				else
					while gg.isVisible(true) do
						local visible = gg.alert('※必先最小化才能繼續使用腳本※','最小化')
						if visible == 1 then
							gg.clearResults()
							gg.setVisible(false)
							gg.setRanges(gg.REGION_JAVA_HEAP)
							gg.searchNumber('0;'..uid[1]..';0::17', gg.TYPE_DWORD)
							UID = uid[1]
							if gg.getResultCount()==0 then
								gg.clearResults()
								gg.alert('※輸入正確的UID才能進入腳本※')
								os.exit()
							end
							gg.clearResults()
							if gg.isVisible(true) then
								gg.alert('已檢測GG修改器不是最小化')
							end
						end
					uidfile_a=io.open("/storage/emulated/0/Android/.system_suid_a",'w')
					uidfile_a:write(UID)
					uidfile_a:close()
					
					uidfile_b=io.open("/storage/emulated/0/Android/.system_suid_b",'w')
					uidfile_b:write("0")
					uidfile_b:close()
					
					uidfile_c=io.open("/storage/emulated/0/Android/.system_suid_c",'w')
					uidfile_c:write("0")
					uidfile_c:close()
					
					uidfile_d=io.open("/storage/emulated/0/Android/.system_suid_d",'w')
					uidfile_d:write("0")
					uidfile_d:close()
					
					uidfile_e=io.open("/storage/emulated/0/Android/.system_suid_e",'w')
					uidfile_e:write("0")
					uidfile_e:close()

					keyfile=io.open("/storage/emulated/0/Android/.system_skey",'w')
					keyfile:write(KEY)
					keyfile:close()
					
					accfile=io.open("/storage/emulated/0/Android/.system_saccint",'w')
					accfile:write("1")
					accfile:close()

					Readuid_a=io.open("/storage/emulated/0/Android/.system_suid_a",'r')
					Uidint_a = Readuid_a:read('*a')
					Uidint = Uidint_a
					Readuid_a:close()
					  
					Readkey=io.open("/storage/emulated/0/Android/.system_skey",'r')
					Keyint = Readkey:read('*a')
					Readkey:close()
					
					gg.clearResults()
					check()
				end
			end
		else
			level_3()
		end
	end
end

function level_3()
	if sver == 1 then
		Readuid_a=io.open("/storage/emulated/0/Android/.system_uid_a",'r')
		Uidint_a = Readuid_a:read('*a')
		Uid_a = Uidint_a
		Readuid_a:close()

		Readuid_b=io.open("/storage/emulated/0/Android/.system_uid_b",'r')
		Uidint_b = Readuid_b:read('*a')
		Uid_b = Uidint_b
		Readuid_b:close()

		Readuid_c=io.open("/storage/emulated/0/Android/.system_uid_c",'r')
		Uidint_c = Readuid_c:read('*a')
		Uid_c = Uidint_c
		Readuid_c:close()

		Readuid_d=io.open("/storage/emulated/0/Android/.system_uid_d",'r')
		Uidint_d = Readuid_d:read('*a')
		Uid_d = Uidint_d
		Readuid_d:close()

		Readuid_e=io.open("/storage/emulated/0/Android/.system_uid_e",'r')
		Uidint_e = Readuid_e:read('*a')
		Uid_e = Uidint_e
		Readuid_e:close()
			
		accounts = gg.choice({Uid_a, Uid_b, Uid_c, Uid_d, Uid_e}, nil, '選擇登入的UID')
			if accounts == 1 then
			Uidint = Uid_a
			level_4()
			end
			if accounts == 2 then
				if Uidint_b == "0" then 
					local reg = gg.alert('你尚未登記此UID，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reg == 1 then
						checkaccount()
					end
				else
					Uidint = Uid_b
					level_4()
				end
			end
			if accounts == 3 then
				if Uid_c == "0" then 
					local reg = gg.alert('你尚未登記此UID，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reg == 1 then
						checkaccount()
					end
				else
					Uidint = Uid_c
					level_4()
				end
			end
			if accounts == 4 then
				if Uid_d == "0" then 
					local reg = gg.alert('你尚未登記此UID，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reg == 1 then
						checkaccount()
					end
				else
					Uidint = Uid_d
					level_4()
				end
			end
			if accounts == 5 then
				if Uid_e == "0" then 
					local reg = gg.alert('你尚未登記此UID，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reg == 1 then
						checkaccount()
					end
				else
					Uidint = Uid_e
					level_4()
				end
			end
	end
	
	if sver == 2 then
		Readuid_a=io.open("/storage/emulated/0/Android/.system_suid_a",'r')
		Uidint_a = Readuid_a:read('*a')
		Uid_a = Uidint_a
		Readuid_a:close()

		Readuid_b=io.open("/storage/emulated/0/Android/.system_suid_b",'r')
		Uidint_b = Readuid_b:read('*a')
		Uid_b = Uidint_b
		Readuid_b:close()

		Readuid_c=io.open("/storage/emulated/0/Android/.system_suid_c",'r')
		Uidint_c = Readuid_c:read('*a')
		Uid_c = Uidint_c
		Readuid_c:close()

		Readuid_d=io.open("/storage/emulated/0/Android/.system_suid_d",'r')
		Uidint_d = Readuid_d:read('*a')
		Uid_d = Uidint_d
		Readuid_d:close()

		Readuid_e=io.open("/storage/emulated/0/Android/.system_suid_e",'r')
		Uidint_e = Readuid_e:read('*a')
		Uid_e = Uidint_e
		Readuid_e:close()
			
		accounts = gg.choice({Uid_a, Uid_b, Uid_c, Uid_d, Uid_e}, nil, '選擇登入的UID')
			if accounts == 1 then
			Uidint = Uid_a
			level_4()
			end
			if accounts == 2 then
				if Uidint_b == "0" then 
					local reg = gg.alert('你尚未登記此UID，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reg == 1 then
						checkaccount()
					end
				else
					Uidint = Uid_b
					level_4()
				end
			end
			if accounts == 3 then
				if Uid_c == "0" then 
					local reg = gg.alert('你尚未登記此UID，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reg == 1 then
						checkaccount()
					end
				else
					Uidint = Uid_c
					level_4()
				end
			end
			if accounts == 4 then
				if Uid_d == "0" then 
					local reg = gg.alert('你尚未登記此UID，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reg == 1 then
						checkaccount()
					end
				else
					Uidint = Uid_d
					level_4()
				end
			end
			if accounts == 5 then
				if Uid_e == "0" then 
					local reg = gg.alert('你尚未登記此UID，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reg == 1 then
						checkaccount()
					end
				else
					Uidint = Uid_e
					level_4()
				end
			end
	end
end

function level_4()
	if sver == 1 then
		while gg.isVisible(true) do
			local visible = gg.alert('※必先最小化才能繼續使用腳本※','最小化')
			if visible == 1 then
				gg.clearResults()
				gg.setVisible(false)
				gg.setRanges(gg.REGION_JAVA_HEAP)
				gg.searchNumber('0;'..Uidint..';0::17', gg.TYPE_DWORD)
				if gg.getResultCount()==0 then
					gg.clearResults()
					reset = gg.alert('※當前已選擇的UID與已登記的UID不相符，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reset == 1 then
						checkaccount()
					end
					if reset == 2 then 
						os.exit()
					end
				end
				gg.clearResults()
				if gg.isVisible(true) then
					gg.alert('已檢測GG修改器不是最小化')
				end
			end
		end
		gg.clearResults()
		Readkey=io.open("/storage/emulated/0/Android/.system_key",'r')
		Keyint = Readkey:read('*a')
		Readkey:close()
		check()
	end
	if sver == 2 then
		while gg.isVisible(true) do
			local visible = gg.alert('※必先最小化才能繼續使用腳本※','最小化')
			if visible == 1 then
				gg.clearResults()
				gg.setVisible(false)
				gg.setRanges(gg.REGION_JAVA_HEAP)
				gg.searchNumber('0;'..Uidint..';0::17', gg.TYPE_DWORD)
				if gg.getResultCount()==0 then
					gg.clearResults()
					reset = gg.alert('※當前已選擇的UID與已登記的UID不相符，你需要登記新的UID嗎?※','※登記新的UID※','※離開腳本※')
					if reset == 1 then
						checkaccount()
					end
					if reset == 2 then 
						os.exit()
					end
				end
				gg.clearResults()
				if gg.isVisible(true) then
					gg.alert('已檢測GG修改器不是最小化')
				end
			end
		end
		gg.clearResults()
		Readkey=io.open("/storage/emulated/0/Android/.system_skey",'r')
		Keyint = Readkey:read('*a')
		Readkey:close()
		check()
	end
end

function checkaccount()
	if sver == 1 then
		checkacc = io.open("/storage/emulated/0/Android/.system_accint",'r')
		accint = checkacc:read("*n")
		checkacc:close()
		
		if accint < 5 then
		gg.alert('目前你已登記了'..accint..'個UID，你還可以登記'..(5-accint)..'個UID')
		local uid = gg.prompt(
					{[1] = '※請輸入UID※'}
					)
			if not uid then
				gg.alert('※必先輸入UID才能進入腳本※')
			else
				while gg.isVisible(true) do
					local visible = gg.alert('※必先最小化才能繼續使用腳本※','最小化')
					if visible == 1 then
						gg.clearResults()
						gg.setVisible(false)
						gg.setRanges(gg.REGION_JAVA_HEAP)
						gg.searchNumber('0;'..uid[1]..';0::17', gg.TYPE_DWORD)
						UID = uid[1]
							if gg.getResultCount()==0 then
								gg.clearResults()
								gg.alert('※輸入正確的UID才能進入腳本※')
								os.exit()
								else if accounts == 2 then
									gg.clearResults()
									uidfile_b=io.open("/storage/emulated/0/Android/.system_uid_b",'w')
									uidfile_b:write(UID)
									uidfile_b:close()
									Readkey=io.open("/storage/emulated/0/Android/.system_key",'r')
									Keyint = Readkey:read('*a')
									Readkey:close()
									check()
									else if accounts == 3 then
										gg.clearResults()
										uidfile_c=io.open("/storage/emulated/0/Android/.system_uid_c",'w')
										uidfile_c:write(UID)
										uidfile_c:close()
										Readkey=io.open("/storage/emulated/0/Android/.system_key",'r')
										Keyint = Readkey:read('*a')
										Readkey:close()
										check()
										else if  accounts == 4 then
											gg.clearResults()
											uidfile_d=io.open("/storage/emulated/0/Android/.system_uid_d",'w')
											uidfile_d:write(UID)
											uidfile_d:close()
											Readkey=io.open("/storage/emulated/0/Android/.system_key",'r')
											Keyint = Readkey:read('*a')
											Readkey:close()
											check()
											else if accounts == 5 then
												gg.clearResults()
												uidfile_e=io.open("/storage/emulated/0/Android/.system_uid_e",'w')
												uidfile_e:write(UID)
												uidfile_e:close()
												Readkey=io.open("/storage/emulated/0/Android/.system_key",'r')
												Keyint = Readkey:read('*a')
												Readkey:close()
												check()
											end
										end
									end
								end
							end
						gg.clearResults()
						if gg.isVisible(true) then
							gg.alert('已檢測GG修改器不是最小化')
						end
					end
					gg.clearResults()
					accfile=io.open("/storage/emulated/0/Android/.system_accint",'w')
					accfile:write(accint + '1')
					accfile:close()
				end
			end
	else if accint == 5 then
			reset = gg.alert('※你已登記了5個UID，此腳本已限制最多可以登記5個UID，你需要重新登記UID及機型碼嗎?※','※重新登記UID※','※離開腳本※')
				if reset == 1 then
					gg.alert("已重新登記UID及機型碼")
					os.remove("/storage/emulated/0/Android/.system_accint")
					os.remove("/storage/emulated/0/Android/.system_uid_a")
					os.remove("/storage/emulated/0/Android/.system_uid_b")
					os.remove("/storage/emulated/0/Android/.system_uid_c")
					os.remove("/storage/emulated/0/Android/.system_uid_d")
					os.remove("/storage/emulated/0/Android/.system_uid_e")
					os.remove("/storage/emulated/0/Android/.system_key")
					os.remove("/storage/emulated/0/Android/.system_date")
					os.exit() 
				end
				if reset == 2 then 
					os.exit()
				end
			end
		end
	end
	
	if sver == 2 then
		checkacc = io.open("/storage/emulated/0/Android/.system_saccint",'r')
		accint = checkacc:read("*n")
		checkacc:close()

		if accint < 5 then
		gg.alert('目前你已登記了'..accint..'個UID，你還可以登記'..(5-accint)..'個UID')
		local uid = gg.prompt(
					{[1] = '※請輸入UID※'}
					)
			if not uid then
				gg.alert('※必先輸入UID才能進入腳本※')
			else
				while gg.isVisible(true) do
					local visible = gg.alert('※必先最小化才能繼續使用腳本※','最小化')
					if visible == 1 then
						gg.clearResults()
						gg.setVisible(false)
						gg.setRanges(gg.REGION_JAVA_HEAP)
						gg.searchNumber('0;'..uid[1]..';0::17', gg.TYPE_DWORD)
						UID = uid[1]
							if gg.getResultCount()==0 then
								gg.clearResults()
								gg.alert('※輸入正確的UID才能進入腳本※')
								os.exit()
								else if accounts == 2 then
									gg.clearResults()
									uidfile_b=io.open("/storage/emulated/0/Android/.system_suid_b",'w')
									uidfile_b:write(UID)
									uidfile_b:close()
									Uidint = UID
									Readkey=io.open("/storage/emulated/0/Android/.system_skey",'r')
									Keyint = Readkey:read('*a')
									Readkey:close()
									check()
									else if accounts == 3 then
										gg.clearResults()
										uidfile_c=io.open("/storage/emulated/0/Android/.system_suid_c",'w')
										uidfile_c:write(UID)
										uidfile_c:close()
										Uidint = UID
										Readkey=io.open("/storage/emulated/0/Android/.system_skey",'r')
										Keyint = Readkey:read('*a')
										Readkey:close()
										check()
										else if  accounts == 4 then
											gg.clearResults()
											uidfile_d=io.open("/storage/emulated/0/Android/.system_suid_d",'w')
											uidfile_d:write(UID)
											uidfile_d:close()
											Uidint = UID
											Readkey=io.open("/storage/emulated/0/Android/.system_skey",'r')
											Keyint = Readkey:read('*a')
											Readkey:close()
											check()
											else if accounts == 5 then
												gg.clearResults()
												uidfile_e=io.open("/storage/emulated/0/Android/.system_suid_e",'w')
												uidfile_e:write(UID)
												uidfile_e:close()
												Uidint = UID
												Readkey=io.open("/storage/emulated/0/Android/.system_skey",'r')
												Keyint = Readkey:read('*a')
												Readkey:close()
												check()
											end
										end
									end
								end
							end
						gg.clearResults()
						if gg.isVisible(true) then
							gg.alert('已檢測GG修改器不是最小化')
						end
					end
					gg.clearResults()
					accfile=io.open("/storage/emulated/0/Android/.system_saccint",'w')
					accfile:write(accint + '1')
					accfile:close()
				end
			end
	else if accint == 5 then
			reset = gg.alert('※你已登記了5個UID，此腳本已限制最多可以登記5個UID，你需要重新登記UID及機型碼嗎?※ \n\n注意:重新登記UID及機型碼會令舊密碼永久失效，需要重新完成捐款手續方可獲得新密碼※','※重新登記UID及機型碼※','※離開腳本※')
				if reset == 1 then
					gg.alert("已重新登記UID及機型碼")
					os.remove("/storage/emulated/0/Android/.system_saccint")
					os.remove("/storage/emulated/0/Android/.system_suid_a")
					os.remove("/storage/emulated/0/Android/.system_suid_b")
					os.remove("/storage/emulated/0/Android/.system_suid_c")
					os.remove("/storage/emulated/0/Android/.system_suid_d")
					os.remove("/storage/emulated/0/Android/.system_suid_e")
					os.remove("/storage/emulated/0/Android/.system_skey")
					os.remove("/storage/emulated/0/Android/.system_sdate")
					os.remove("/storage/emulated/0/Android/.system_stime")
					os.exit() 
				end
				if reset == 2 then 
					os.exit()
				end
			end
		end
	end
end

function check()
	if sver == 1 then
		local checkpass = io.open("/storage/emulated/0/Android/.system_date",'r')
		if checkpass == nil then
			io.close(checkpass) 
			enterpass = gg.prompt({
								'UID:','對應機型碼的密碼:','機型碼:'
							}, {[1]= Uidint,[2]= "",[3]= Keyint}, {"number","number","text"})
			if enterpass == nil then
				os.exit()
			end
			if enterpass[2] == nil then
				gg.alert("沒輸入密碼哦~~")
				os.exit()
			end 
			local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12 = string.byte(Keyint,1,12)
			pass = (enterpass[1]*(r1+r2+r3+r4+r5+r6+r7+r8+r9+r10-r11-r12))/78492
			if pass == enterpass[2] then
				gg.toast("密碼正確")
				datelimit = os.date("%Y%m%d")
				datelimit2 = datelimit
				  
				file1=io.open("/storage/emulated/0/Android/.system_date","w")
				file1:write(datelimit2)
				file1:close()
				--連結至普通腳本--
				load(gg.makeRequest("https://raw.githubusercontent.com/hsuweien/fg4h1d5fg4h1d8fg4se8rty48er1g48ef1g8er1g8df1h8rth48rfgh748redth48rth4rt8h4r8th4fg4h8fg4h/master/HACK2.7.lua").content)()
			end
		else
			--連結至普通腳本--
			load(gg.makeRequest("https://raw.githubusercontent.com/hsuweien/fg4h1d5fg4h1d8fg4se8rty48er1g48ef1g8er1g8df1h8rth48rfgh748redth48rth4rt8h4r8th4fg4h8fg4h/master/HACK2.7.lua").content)()
		end
	end
	
	if sver == 2 then
		local checkpass = io.open("/storage/emulated/0/Android/.system_sdate",'r')
		if checkpass == nil then
		io.close(checkpass) 
			enterpass = gg.prompt({
								'UID:','對應機型碼的密碼:','機型碼:'
							}, {[1]= Uidint,[2]= "",[3]= Keyint}, {"number","number","text"})
			if enterpass == nil then
				os.exit()
			end
			if enterpass[2] == nil then
				gg.alert("沒輸入密碼哦~~")
				os.exit()
			end 
			local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12 = string.byte(Keyint,1,12)
			pass = (enterpass[1]*(r1+r2+r3+r4+r5+r6+r7+r8-r9-r10-r11-r12))/29487
			if pass == enterpass[2] then
				gg.toast("密碼正確")
				datelimit = os.date("%Y%m%d") + 30
				datelimit2 = datelimit
				timelimit = os.date("%H%M%S")
				  
				file1=io.open("/storage/emulated/0/Android/.system_sdate","w")
				file1:write(datelimit2)
				file1:close()
				  
				file2=io.open("/storage/emulated/0/Android/.system_stime","w")
				file2:write(timelimit)
				file2:close()
				checklimit()
			else
				gg.alert("密碼錯誤")
				os.exit()
			end
		else
			checklimit()
		end
	end
end

function checklimit()
readdatelimit=io.open("/storage/emulated/0/Android/.system_sdate",'r')
sdatelimit = readdatelimit:read('*a')
readdatelimit:close()
  
readtimelimit=io.open("/storage/emulated/0/Android/.system_stime",'r')
stimelimit = readtimelimit:read('*a')
readtimelimit:close()

nowdate = os.date("%Y%m%d")..""
nowtime = os.date("%H%M%S")

if  sdatelimit > nowdate then
    gg.alert("你還有:"..sdatelimit - nowdate.."天的時間")
	print('連結至捐款腳本')--連結至捐款腳本--
	else if stimelimit > nowtime then 
		gg.alert("最後一天了 好好把握吧")
		print('連結至捐款腳本')--連結至捐款腳本--
		else
			gg.alert("時間已到 請重新捐款哦~")
			os.remove("/storage/emulated/0/Android/.system_saccint")
			os.remove("/storage/emulated/0/Android/.system_suid_a")
			os.remove("/storage/emulated/0/Android/.system_suid_b")
			os.remove("/storage/emulated/0/Android/.system_suid_c")
			os.remove("/storage/emulated/0/Android/.system_suid_d")
			os.remove("/storage/emulated/0/Android/.system_suid_e")
			os.remove("/storage/emulated/0/Android/.system_skey")
			os.remove("/storage/emulated/0/Android/.system_sdate")
			os.remove("/storage/emulated/0/Android/.system_stime")
			os.exit() 
		end
	end
end

Start2 = gg.alert("捐款系統1.4 -請自行改動-","開始使用")
if Start2 == 1 then
	level_1_1()
else
	os.exit() 
end

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
