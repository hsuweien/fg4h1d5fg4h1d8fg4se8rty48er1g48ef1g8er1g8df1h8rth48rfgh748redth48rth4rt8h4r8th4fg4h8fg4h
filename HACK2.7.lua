vgg=13990
if gg.BUILD < vgg then erronum=1 goto  erro end
gg.clearResults()
gg.alert("神魔之塔外掛腳本通用正式版 v2.6 \n腳本作者: 餅乾、韋恩、ting、凝雪、俊廷 \n更新時間：2019/05/26");
goto WELCOME

::erro::
if erronum==1 then print('請更新GG到最新版本') end

::WELCOME::
menu = gg.choice({'※使用說明','※進入腳本','※鎖率查詢'},nil,'歡迎使用本腳本\n使用前建議詳讀使用說明')
if menu == 1 then goto thx end
if menu == 2 then goto STARE end
if menu == 3 then goto BanProbability end
if not menu then print("感謝使用") return end

::thx::
gg.alert('功能：\n★新功能★ \n新增遊戲版本檢查功能 \n自動更新版本數據 \n新增腳本原碼加密 \n※請勿私自販售或修改此腳本 \n成功搜尋數據會顯示修改成功 \n反之會顯示尋找數據失敗 \n使用外掛就有風險被封 \n如不幸被封恕不負責 \n使用腳本方法：\n○進入關卡後重開遊戲(這是為了不上榜)，等到繼續戰鬥按鈕出現後再執行修改')
goto WELCOME

::BanProbability::
gg.alert('腳本功能鎖率：\n①無限攻擊回復      ：★☆☆☆☆ \n②迴避敵人攻擊      ：★☆☆☆☆ \n③全體攻擊              ：★★★☆☆ \n④Combo倍率         ：★★★☆☆ \n⑤CD１                      :  ★★★☆☆ \n⑥開放戰友              ：★★☆☆☆ \n⑦取消敵技              ：★★★☆☆ \n⑧敵方固定CD          :  ★★★☆☆ \n⑨隊伍空間Cost 0   ：★★☆☆☆ \n⑩延長移動符石時間:  ★★★☆☆ \n⑪無限復活                :  ★★★☆☆ \n⑫秒殺:★★☆☆☆ \n⑬究極秒關:★☆☆☆☆ \n \n防外掛偵測修改後鎖率： \n①變速防偵測             :  ☆☆☆☆☆ \n②不上榜                     :  ★★★☆☆')
goto WELCOME

::STARE::
gg.clearResults()
x1='0617FE012A520203r'
x2='705036359;238617600;2113929216;84148994::'
x3='2A00000013300300r;1330030080010000r'
x4='000428720D000622r'
x5='321192960;321194244;285479173;1494681088'
x6='50463744;33554432;33554432;1912668160'
x7='000A2A0013300400r;13300400E3000000r'
x8='1494681088;673513990;33947769::'
x9='302667782' --'000A3ADDFFFFFFDDr;FFFFFFDD0E000000r;0E0000001202FE16r'--
x10='225585162;1862665728' --'1084227584;1862665728'--
x11a='0402177D93000004r;02177D940000042Ar::'
x11b='-1238758912;2242820;621019224::'
x11c='1F3C5A3E0D000000r'
x12='1330030058000000r;540000117EBE0000r;0A0A160B383C0000r::'
cdr='321192960;321194244;285479173;1511392768'
emcdr='1494615552;673513990;33947769::'

function highatk ()
gg.setVisible(false) 
gg.clearResults()
gg.searchNumber(x1, gg.TYPE_QWORD)
	if gg.getResultCount()==0 then
			print('※無限攻擊回復 [尋找數據失敗]※')
	else
		local r = gg.getResults(1)
		gg.clearResults()
		local val = {
					  "1E2040420F00002Ar"
				}
		local num = 1
		local offset = -40
		for _FORLP_ = 1, num do
			gg.setValues({
				{
				  address = r[1].address + offset + (_FORLP_ - 1) * 8,
				  value = val[_FORLP_],
			      flags = r[1].flags
			    }
			})
        end
			print('※無限攻擊回復 [修改成功]※')
	end
end

function miss ()
gg.setVisible(false)
gg.clearResults()
gg.searchNumber(x2, gg.TYPE_DWORD)
	if gg.getResultCount()==0 then
			print('※迴避敵人攻擊 [尋找數據失敗]※')
	else
		local r = gg.getResults(1,1)
		gg.clearResults()
		local val = 58
		local offset = 2
		gg.setValues({
			{
			  address = r[1].address + offset,
			  value = val,
			  flags = gg.TYPE_BYTE
			}
		})
			print('※迴避敵人攻擊 [修改成功]※')
	end
end

function allatk ()
gg.setVisible(false)
gg.clearResults()
gg.searchNumber(x3, gg.TYPE_QWORD)
	if gg.getResultCount()==0 then
			print('※全體攻擊 [尋找數據失敗]※')
	else
		local r = gg.getResults(1)
		gg.clearResults()
		local val = {
					  "062A1E1700000000r",
					  "00000000002A2202r"
				}
		local num = 2
		local offset = -52
		for _FORLP_ = 1, num do
			gg.setValues({
				{
				  address = r[1].address + offset + (_FORLP_ - 1) * 4,
				  value = val[_FORLP_],
				  flags = gg.TYPE_QWORD
				}
			})
        end
			print('※全體攻擊 [修改成功]※')
	end
end

function Combo ()
gg.setVisible(false)
	if reset == 0 then
		gg.clearResults()
		gg.searchNumber(x4, gg.TYPE_QWORD)
		if gg.getResultCount()==0 then
				print('※Combo% [尋找數據失敗]※')
		else
		local r = gg.getResults(1)
		gg.clearResults()
		local offset = 8
			if comnum==0 then
			local val = gg.prompt(
					{[1] = '※請輸入Combo%※  ※input value of Combo%※'}
					)
				if not val then
						print('※已取消修改 Combo%※')
				end
				val[1] = val[1]/100
				gg.setValues({
					{
					  address = r[1].address + offset,
					  value = val[1],
					  flags = gg.TYPE_FLOAT
					}
				})
			end
			if comnum==1 then
				com='0.5'
			end
			if comnum==2 then
				com='1.0'
			end 
			if comnum==3 then
				com='2.0'
			end
			if comnum==4 then
				com='4.0'
			end
			if comnum==5 then
				com='5.0'
			end
			if comnum ~= 0 then
			gg.setValues({
					{
					  address = r[1].address + offset,
					  value = com,
					  flags = gg.TYPE_FLOAT
					}
				})
			end
				print('※Combo% [修改成功]※')
				gg.alert('為減少使用者在使用Combo% 修改下被封帳，請在[首次進入關卡後]而且在[首次消除符石後]，重啟腳本點選[②數據改回功能]再按[①Combo數據改回]。')
		end
	end
	if reset == 1 then
		gg.clearResults()
		gg.searchNumber(x4, gg.TYPE_QWORD)
		if gg.getResultCount()==0 then
				print('※Combo% [尋找改回失敗]※')
		else
			local r = gg.getResults(1)
			gg.clearResults()
			local offset = 8
			gg.setValues({
				{
				  address = r[1].address + offset,
				  value = '0.25',
				  flags = gg.TYPE_FLOAT
				}
			})
				print('※Combo% [數據改回成功]※')
		end
	end
end

function cd1 ()
gg.setVisible(false)
	if reset == 0 then
		gg.clearResults()
		gg.searchNumber(x5, gg.TYPE_DWORD)
		if gg.getResultCount()==0 then
				print('※CD１ [尋找數據失敗]※')
		else
			local r = gg.getResults(1,3)
			gg.clearResults()
			local val = {
						  "22",
						  "90"
					}
			local num = 2
			local offset =2
			for _FORLP_ = 1, num do
				gg.setValues({
					{
					  address = r[1].address + offset + (_FORLP_ - 1) * 1,
					  value = val[_FORLP_],
					  flags = gg.TYPE_BYTE
					}
				})
			end
				print('※CD１ [修改成功]※')
				gg.alert('為減少使用者在使用CD１ 修改下被封帳，請在[首次進入關卡後]而且在[首次消除符石後]，重啟腳本點選[②數據改回功能]再按[②CD１數據改回]。')
		end
	end
	if reset == 1 then
		gg.clearResults()
		gg.searchNumber(cdr, gg.TYPE_DWORD)
		if gg.getResultCount()==0 then
				print('※CD１ [數據改回失敗]※')
		else
			local r = gg.getResults(1,3)
			gg.clearResults()
			local val = {
						  "23",
						  "89"
					}
			local num = 2
			local offset =2
			for _FORLP_ = 1, num do
				gg.setValues({
					{
					  address = r[1].address + offset + (_FORLP_ - 1) * 1,
					  value = val[_FORLP_],
					  flags = gg.TYPE_BYTE
					}
				})
			end
				print('※CD１ [數據改回成功]※')
		end
	end
end

function mercenary ()
gg.setVisible(false) 
gg.clearResults()
gg.searchNumber(x6, gg.TYPE_DWORD)
	if gg.getResultCount()==0 then
			print('※開放戰友 [尋找數據失敗]※')
	else
		local r = gg.getResults(1,6)
		gg.clearResults()
		local val = {
					  "4",
					  "0",
					  "0",
					  "0"
				}
		local num = 4
		local offset = 8
		for _FORLP_ = 1, num do
			gg.setValues({
				{
				  address = r[1].address + offset + (_FORLP_ - 1) * 4,
				  value = val[_FORLP_],
				  flags = gg.TYPE_DWORD
				}
			})
        end
			print('※開放戰友 [修改成功]※')

	end
end

function emnoskill ()
gg.setVisible(false)
	if reset == 0 then
		gg.clearResults()
		gg.searchNumber(x7, gg.TYPE_QWORD)
		if gg.getResultCount()==0 then
				print('※取消敵技 [尋找數據失敗]※')
		else
			local r = gg.getResults(1)
			gg.clearResults()
			local val = '22'
			local offset = -4
			gg.setValues({
				{
				  address = r[1].address + offset,
				  value = val,
				  flags = gg.TYPE_BYTE
				}
			})
				print('※取消敵技 [修改成功]※')
				gg.alert('為減少使用者在使用取消敵技修改下被封帳，請在[首次進入關卡後]而且在[首次消除符石後]，重啟腳本點選[②數據改回功能]再按[④取消敵技 數據改回]。')
		end
	end
	if reset == 1 then
		gg.clearResults()
		gg.searchNumber(x7)
		if gg.getResultCount()==0 then
				print('※取消敵技 [數據改回失敗]※')
		else
			local r = gg.getResults(1)
			gg.clearResults()
			local val = '3'
			local offset = -4
			gg.setValues({
				{
				  address = r[1].address + offset,
				  value = val,
				  flags = gg.TYPE_BYTE
				}
			})
				print('※取消敵技 [數據改回成功]※')
		end
	end
end

function emcd ()
gg.setVisible(false)
	if reset == 0 then
		gg.clearResults()
		gg.searchNumber(x8, gg.TYPE_DWORD)
		if gg.getResultCount()==0 then
				print('※敵方固定CD [尋找數據失敗]※')
		else
			local r = gg.getResults(1)
			gg.clearResults()
			local val = '22'
			local offset = 2
				gg.setValues({
					{
					  address = r[1].address + offset,
					  value = val,
					  flags = gg.TYPE_BYTE
					}
				})
				print('※敵方固定CD [修改成功]※')
				gg.alert('為減少使用者在使用敵方固定CD 修改下被封帳，請在[首次進入關卡後]而且在[首次消除符石後]，重啟腳本點選[②數據改回功能]再按[⑤敵方CD 數據改回]。')
		end
	end
	if reset == 1 then
		gg.clearResults()
		gg.searchNumber(emcdr, gg.TYPE_DWORD)
		if gg.getResultCount()==0 then
				print('※敵方固定CD [數據改回失敗]※')
		else
			local r = gg.getResults(1)
			gg.clearResults()
			local val = '23'
			local offset = 2
				gg.setValues({
					{
					  address = r[1].address + offset,
					  value = val,
					  flags = gg.TYPE_BYTE
					}
				})
				print('※敵方固定CD [數據改回成功]※')
		end
	end
end

function teamcost0 ()
gg.setVisible(false) 
gg.clearResults()
gg.searchNumber(x9, gg.TYPE_DWORD)
	if gg.getResultCount()==0 then
			print('※隊伍空間Cost 0 [尋找數據失敗]※')
	else
		local r = gg.getResults(1,2)
		gg.clearResults()
		local val = '90'
		local offset = 1
			gg.setValues({
				{
				  address = r[1].address + offset,
				  value = val,
				  flags = gg.TYPE_BYTE
				}
			})
			print('※隊伍空間Cost 0 [修改成功]※')
	end
end

function movingtime ()
gg.setVisible(false)
	if reset == 0 then
		local val = gg.prompt(
				{[1] = '※請輸入轉珠秒數※  ※input value of Runestone-moving time※'}
				)
			if not val then
					print('※已取消修改 延長移動符石時間※')
			end
			gg.clearResults()
			gg.searchNumber(x10, gg.TYPE_DWORD)
			if gg.getResultCount()==0 then
					print('※延長移動符石時間 [尋找數據失敗]※')
			else
					local r = gg.getResults(1,1)
					gg.clearResults()
					local offset = -8
					gg.setValues({
						{
						  address = r[1].address + offset,
						  value = val[1],
						  flags = gg.TYPE_FLOAT
						}
					})
					print('※延長移動符石時間 [修改成功]※')
					gg.alert('為減少使用者在使用延長移動符石時間 修改下被封帳，請在[首次進入關卡後]而且在[首次消除符石後]，重啟腳本點選[②數據改回功能]再按[⑥延長移動符石時間 數據改回]。')
			end
		Extra()
	end
	if reset == 1 then
		gg.clearResults()
		gg.searchNumber(x10, gg.TYPE_DWORD)
		if gg.getResultCount()==0 then
				print('※延長移動符石時間 [數據改回失敗]※')
		else
			local r = gg.getResults(1,1)
			gg.clearResults()
			local val = {
						  "5"
					}
			local offset = -8
			gg.setValues({
				{
				  address = r[1].address + offset,
				  value = val[1],
				  flags = gg.TYPE_FLOAT
				}
			})
				print('※延長移動符石時間 [數據改回成功]※')
		end
	end
end

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

function speedhackbp ()
gg.setVisible(false) 
gg.clearResults()
gg.searchNumber(x11a, gg.TYPE_QWORD)
	if gg.getResultCount()==0 then
		succuss = 0
	else
	local ra = gg.getResults(1)
	gg.clearResults()
	local num = 2
	local vala = {
				  "0402167D93000004r",
				  "02167D940000042Ar"
				 }
	for _FORLP_ = 1, num do
	gg.setValues({
				{
				  address = ra[1].address + (_FORLP_ - 1) * 8,
				  value = vala[_FORLP_],
				  flags = gg.TYPE_QWORD
				}
			})
	end
	end
gg.clearResults()
gg.searchNumber(x11b, gg.TYPE_DWORD)
	if gg.getResultCount()==0 then
		succuss = 0
	else
	local rb = gg.getResults(1,1)
	gg.clearResults()
	local valb = '58'
	local offset = 1
	gg.setValues({
		{
		  address = rb[1].address + offset,
		  value = valb,
		  flags = gg.TYPE_BYTE
		}
	})
	end
gg.clearResults()
gg.searchNumber(x11c, gg.TYPE_QWORD)
	if gg.getResultCount()==0 then
		succuss = 0
	else
	local rc = gg.getResults(1)
	gg.clearResults()
	local valc = '1F3C5A380D000000r'
	gg.setValues({
		{
		  address = rc[1].address,
		  value = valc,
		  flags = gg.TYPE_QWORD
		}
	})
	end
	if succuss == 0 then
			print('※變速防偵測 [尋找數據失敗]※')
	else
			print('※變速防偵測 [修改成功]※')
			gg.alert('※變速防偵測 [修改成功]※ ※現在返回主要功能※')
	end
end

function leaderboardbp ()
if reset == 0 then
	gg.setVisible(false) 
	gg.clearResults()
	gg.searchNumber(x12, gg.TYPE_QWORD)
		if gg.getResultCount()==0 then
				print('※不上榜 [尋找數據失敗]※')
		else
			local r = gg.getResults(1)
			gg.clearResults()
			local offset = -32
			local val = '23'
				gg.setValues({
					{
					  address = r[1].address + offset,
					  value = val,
					  flags = gg.TYPE_BYTE
					}
				})
				print('※不上榜 [修改成功]※')
				gg.alert('※不上榜 [修改成功]※ ※現在返回主要功能※')
				gg.alert('為減少使用者在使用不上榜 修改下被封帳，請在[首次進入關卡後]而且在[首次消除符石後]，重啟腳本點選[②數據改回功能]再按[⑧不上榜 數據改回]。')
		end
end
if reset == 1 then
	gg.setVisible(false) 
	gg.clearResults()
	gg.searchNumber(x12, gg.TYPE_QWORD)
		if gg.getResultCount()==0 then
				print('※不上榜 [數據改回失敗]※')
		else
			local ra = gg.getResults(1)
			gg.clearResults()
			local offset_a = -32
			local vala = '2'
				gg.setValues({
					{
					  address = ra[1].address + offset_a,
					  value = vala,
					  flags = gg.TYPE_BYTE
					}
				})
		if succuss == 0 then
				print('※不上榜 [數據改回失敗]※')
		else
				print('※不上榜 [數據改回成功]※')
		end
	end
end
end

function functionerror ()
	if fun == 1 then
			gg.alert("高攻回 功能目前無法使用")
	end
	if fun == 2 then
			gg.alert("MISS 功能目前無法使用")
	end
	if fun == 3 then
			gg.alert("Combo% 功能目前無法使用")
	end
	if fun == 4 then
			gg.alert("全體攻擊 功能目前無法使用")
	end
	if fun == 5 then
			gg.alert("CD１ 功能目前無法使用")
	end
	if fun == 6 then
			gg.alert("開放戰友 功能目前無法使用")
	end
	if fun == 7 then
			gg.alert("取消敵技 功能目前無法使用")
	end
	if fun == 8 then
			gg.alert("敵方固定CD 功能目前無法使用")
	end
	if fun == 9 then
			gg.alert("隊伍空間Cost 0 功能目前無法使用")
	end
	if fun == 10 then
			gg.alert("延長移動符石時間 功能目前無法使用")
	end
	if fun == 11 then
			gg.alert("變速防偵測 功能目前無法使用")
	end
	if fun == 12 then
			gg.alert("無限復活 功能目前無法使用")
	end
	if fun == 13 then
			gg.alert("不上榜 功能目前無法使用")
	end
	if fun == 14 then
			gg.alert("秒怪 目前無法使用")
	end
	if fun == 15 then
			gg.alert("究極秒關 功能目前無法使用")
	end
end

function main ()
    local funcTable= gg.choice({'①修改功能區','②數據改回功能','③防外掛偵測'}, nil, '選擇功能')
    if not funcTable then
	    print("感謝使用")
	    return
	end
	gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))

	if funcTable == 1 then
     toshacking()
	end
	if funcTable == 2 then
     tosreset()
	end
	if funcTable == 3 then
     tosbp()
	end
end

function tosreset ()
    local funcTable= gg.multiChoice({'①Combo 數據改回','②CD１ 數據改回','③MISS 數據改回','④取消敵技 數據改回','⑤敵方固定CD 數據改回','⑥延長移動符石時間 數據改回','⑦無限復活 數據改回','⑧不上榜 數據改回','⑨秒殺'}, {}, '選擇數據改回功能')
		if not funcTable then
			gg.toast("取消使用數據改回功能")
			local leave= gg.choice({'返回主要功能','離開腳本'})
			gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
				if not leave then
					tosreset()
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
			reset=1
			Combo()
		end
		if funcTable[2] then
			reset=1
			cd1()
		end
		if funcTable[3] then
			fun=2
			functionerror()
		end
		if funcTable[4] then
			reset=1
			emnoskill()
		end
		if funcTable[5] then
			reset=1
			emcd()
		end
		if funcTable[6] then
			reset=1
			movingtime()
		end
		if funcTable[7] then
			fun=12
			functionerror()
		end
		if funcTable[8] then
			reset=1
			leaderboardbp()
		end
		if funcTable[9] then
			reset=1
			ST()
		end
	end

function tosbp ()
    local funcTable= gg.multiChoice({'①變速防偵測','②不上榜'}, nil, '請選擇防外掛偵測選項')
		if not funcTable then
			gg.toast("已取消修改防外掛偵測")
			local leave= gg.choice({'返回主要功能','離開腳本'})
			gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
				if not leave then
					tosbp()
				end
				if leave == 1 then
					main()
				end
				if leave == 2 then
					print("感謝使用")
					return
				end
		end
	gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
		if funcTable[1] and funcTable[2] then
			speedhackbp()
			reset = 0
            leaderboardbp()
			main()
		end
		if funcTable[1] and not funcTable[2] then
            speedhackbp()
			main()
		end
		if funcTable[2] and not funcTable[1] then
			reset = 0
            leaderboardbp()
			main()
		end
	end

function toshacking ()
    local funcTable= gg.choice({'①延長移動符石時間','②只使用其他功能','③愛心捐款者專用隱藏功能'}, nil, '選擇修改功能')
	if not funcTable then
			gg.toast("已取消使用修改功能")
			local leave= gg.choice({'返回主要功能','離開腳本'})
			gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
				if not leave then
					toshacking()
				end
				if leave == 1 then
					main()
				end
				if leave == 2 then
					print("感謝使用")
					return
				end
		end
	gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))

	if funcTable == 1 then
	 reset=0
	 movingtime()
	end
	if funcTable == 2 then
     Extra()
	end
	if funcTable == 3 then
	load(gg.makeRequest("https://raw.githubusercontent.com/hsuweien/fg4h1d5fg4h1d8fg4se8rty48er1g48ef1g8er1g8df1h8rth48rfgh748redth48rth4rt8h4r8th4fg4h8fg4h/master/TosHack%20Donation%20Version%201.4%20.lua").content)()
	end
end

function Extra ()
    local funcTable= gg.multiChoice({'①無限攻擊回復','②迴避敵人攻擊','③全體攻擊','④選擇Combo倍率','⑤CD１','⑥開放戰友','⑦取消敵技','⑧敵方固定CD','⑨隊伍空間Cost 0','⑩無限復活'}, nil, '選擇額外功能')
		if not funcTable then
			gg.toast("已取消使用額外功能")
			local leave= gg.choice({'返回主要功能','離開腳本'})
			gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
				if not leave then
					Extra()
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
		highatk()
		end
	if funcTable[2] then
		miss()
		end
    if funcTable[3] then
		allatk()
		end
	if funcTable[4] then
		reset=0
	    Comboch()
		end
	if funcTable[5] then
		reset=0
	    cd1()
		end
	if funcTable[6] then
	    mercenary()
		end
	if funcTable[7] then
		reset=0
		emnoskill()
		end
	if funcTable[8] then
		reset=0
		emcd()
		end
	if funcTable[9] then
		teamcost0()
		end
	if funcTable[10] then
		fun=12
		functionerror()
		end
end

function Comboch ()
    local funcTable= gg.choice({'①自選Combo%','②50%Combo','③100%Combo','④200%Combo','⑤400%Combo','⑥500%Combo'}, nil, '請選擇修改Combo%選項')
		if not funcTable then
			gg.toast("已取消修改Combo%")
			local leave= gg.choice({'返回主要功能','離開腳本'})
			gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
				if not leave then
					Comboch()
				end
				if leave == 1 then
					main()
				end
				if leave == 2 then
					print("感謝使用")
					return
				end
		end
	gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
	if funcTable == 1 then
	reset=0
	comnum=0
	Combo()
	return
	end
	if funcTable == 2 then
	reset=0
	comnum=1
	Combo()
	return
	end
	if funcTable == 3 then
	reset=0
	comnum=2
	Combo()
	return
	end
	if funcTable == 4 then
	reset=0
	comnum=3
	Combo()
	return
	end
	if funcTable == 5 then
	reset=0
	comnum=4
	Combo()
	return
	end
	if funcTable == 6 then
	reset=0
	comnum=5
	Combo()
	return
	end
end

main()