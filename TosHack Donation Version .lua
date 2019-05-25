function writefile()
JT = math.random(459867,2694599)
file=io.open(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116),string.char(114))
if file == nil then
file=io.open(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116),string.char(119))
file:write(JT)

JTfw=io.open(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116),string.char(114))
 JTdia = JTfw:read('*a')
  JTfw:close()
  
else
JTfw=io.open(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116),string.char(114))
 JTdia = JTfw:read('*a')
  JTfw:close()

end
check()
end

function check()
fwj=io.open(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116,110)..string.char(),string.char(114))
  if fwj ==nil then io.close(fwj) 
  JTmu = gg.prompt({
     string.char(229,176)..string.char(141,230)..string.char(135,137)..string.char(230,169)..string.char(159,229)..string.char(158,139)..string.char(231,162)..string.char(188,231)..string.char(154,132)..string.char(229,175)..string.char(134,231)..string.char(162,188)..string.char(58),string.char(230,169)..string.char(159,229)..string.char(158,139)..string.char(231,162)..string.char(188,58)..string.char()
   }, {   
   [1]=string.char(),
   [2]= JTdia
       }, {string.char(116,101)..string.char(120,116)..string.char(),string.char(116,101)..string.char(120,116)..string.char()})
         if JTmu == nil then
   os.exit()
     end
  if JTmu[1] == nil then gg.alert("沒輸入密碼哦~~") os.exit() end 

a1 = (JTmu[1]+51234)/JTdia
JT = a1..""

if JT == 4173 then gg.toast(string.char(229,175)..string.char(134,231)..string.char(162,188)..string.char(230,173)..string.char(163,231)..string.char(162,186)..string.char())
else
gg.alert(string.char(229,175)..string.char(134,231)..string.char(162,188)..string.char(233,140)..string.char(175,232)..string.char(170,164)..string.char()) os.exit() end

sj1 = os.date(string.char(37,89)..string.char(37,109)..string.char(37,100)..string.char()) + 30
sj2 = sj1
sjf1 = os.date(string.char(37,72)..string.char(37,77)..string.char(37,83)..string.char())
  
  file1=io.open(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116,110)..string.char(),string.char(119))
file1:write(sj2)
file1:close()
  
  file2=io.open(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116,102)..string.char(),string.char(119))
file2:write(sjf1)
file2:close()
sc()
  else
 sc()
    end
end





function sc()

fwj=io.open(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116,110)..string.char(),string.char(114))

 JTdi= fwj:read('*a')
  fwj:close()
  
  
  fwj1=io.open(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116,102)..string.char(),string.char(114))
  
   di1 = fwj1:read('*a')
  fwj1:close()
 

JTsj = os.date(string.char(37,89)..string.char(37,109)..string.char(37,100)..string.char())..""

sjf = os.date(string.char(37,72)..string.char(37,77)..string.char(37,83)..string.char())





if  JTdi> JTsj then
  
    gg.alert(string.char(228,189)..string.char(160,233)..string.char(130,132)..string.char(230,156)..string.char(137,58)..string.char()..JTdi - JTsj..string.char(229,164)..string.char(169,231)..string.char(154,132)..string.char(230,153)..string.char(130,233)..string.char(150,147)..string.char())  
    
    else
    
    if di1 > sjf then 

 gg.alert(string.char(230,156)..string.char(128,229)..string.char(190,140)..string.char(228,184)..string.char(128,229)..string.char(164,169)..string.char(228,186)..string.char(134,32)..string.char(229,165)..string.char(189,229)..string.char(165,189)..string.char(230,138)..string.char(138,230)..string.char(143,161)..string.char(229,144)..string.char(167))
 else
 gg.alert(string.char(230,153)..string.char(130,233)..string.char(150,147)..string.char(229,183)..string.char(178,229)..string.char(136,176)..string.char(32,232)..string.char(171,139)..string.char(233,135)..string.char(141,230)..string.char(150,176)..string.char(230,141)..string.char(144,230)..string.char(172,190)..string.char(229,147)..string.char(166,126)..string.char())
 os.remove(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116))
 os.remove(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116,110)..string.char())
 os.remove(string.char(47,115)..string.char(116,111)..string.char(114,97)..string.char(103,101)..string.char(47,101)..string.char(109,117)..string.char(108,97)..string.char(116,101)..string.char(100,47)..string.char(48,47)..string.char(65,110)..string.char(100,114)..string.char(111,105)..string.char(100,47)..string.char(46,115)..string.char(121,115)..string.char(116,101)..string.char(109,95)..string.char(105,110)..string.char(116,102)..string.char())
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
	main ()
end

donationhack ()
