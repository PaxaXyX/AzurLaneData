pg = pg or {}
pg.SdkMgr = singletonClass("SdkMgr")
slot0 = pg.SdkMgr

function slot0.Ctor(slot0)
	if PLATFORM_CODE == PLATFORM_CH then
		slot0.instance = require("Mgr.Sdk.BiliSDKMgr")
	elseif PLATFORM_CODE == PLATFORM_JP then
		slot0.instance = require("Mgr.Sdk.AiriSDKJPMgr")
	elseif PLATFORM_CODE == PLATFORM_KR then
		slot0.instance = require("Mgr.Sdk.TxwyKrSDKMgr")
	elseif PLATFORM_CODE == PLATFORM_US then
		slot0.instance = require("Mgr.Sdk.AiriSDKUSMgr")
	elseif PLATFORM_CODE == PLATFORM_CHT then
		slot0.instance = require("Mgr.Sdk.YongshiSdkMgr")
	end
end

function slot0.Call(slot0, slot1, ...)
	if slot0.instance[slot1] then
		slot4[MULTRES] = ...

		slot0.instance[slot1](unpack({
			...
		}))
	end
end

function slot0.Get(slot0, slot1, ...)
	slot4[MULTRES] = ...

	return slot0.instance[slot1](unpack({
		...
	}))
end

function EnterMultiWindow(slot0)
	print(".......EnterMultiWindow")
end

function ExitMultiWindow(slot0)
	print(".......ExitMultiWindow")
end

function slot0.InitSDK(slot0)
	slot0:Call("InitSDK")
end

function slot0.GoSDkLoginScene(slot0)
	slot0:Call("GoSDkLoginScene")
end

function slot0.LoginSdk(slot0, slot1)
	slot0:Call("LoginSdk", slot1)
end

function slot0.TryLoginSdk(slot0)
	slot0:Call("TryLoginSdk")
end

function slot0.CreateRole(slot0, slot1, slot2, slot3, slot4, slot5)
	slot0:Call("CreateRole", slot1, slot2, slot3, slot4, slot5)
end

function slot0.EnterServer(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7)
	slot0:Call("EnterServer", slot1, slot2, slot3, slot4, slot5, slot6, slot7)
end

function slot0.ChooseServer(slot0, slot1, slot2)
	slot0:Call("ChooseServer", slot1, slot2)
end

function slot0.SdkGateWayLogined(slot0)
	slot0:Call("SdkGateWayLogined")
end

function slot0.SdkLoginGetaWayFailed(slot0)
	slot0:Call("SdkLoginGetaWayFailed")
end

function slot0.SdkLevelUp(slot0)
	slot0:Call("SdkLevelUp")
end

function slot0.SdkPay(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8, slot9, slot10)
	slot0:Call("SdkPay", slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8, slot9, slot10)
end

function slot0.LogoutSDK(slot0)
	slot0:Call("LogoutSDK")
end

function slot0.BindCPU(slot0)
	slot0:Call("BindCPU")
end

function slot0.OnAndoridBackPress(slot0)
	slot0:Call("OnAndoridBackPress")
end

function slot0.GetChannelUID(slot0)
	return slot0:Get("GetChannelUID")
end

function slot0.GetLoginType(slot0)
	return slot0:Get("GetLoginType")
end

function slot0.GetIsPlatform(slot0)
	return slot0:Get("GetIsPlatform")
end

function slot0.GetYostarUid(slot0)
	return slot0:Get("GetYostarUid")
end

function slot0.GetYostarTransCode(slot0)
	return slot0:Get("GetTransCode")
end

function slot0.CheckAudit(slot0)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("CheckAudit")
	else
		return false
	end
end

function slot0.CheckPreAudit(slot0)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("CheckPreAudit")
	else
		return false
	end
end

function slot0.CheckPretest(slot0)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("CheckPretest")
	else
		return false
	end
end

function slot0.AiriLoginSDK(slot0)
	slot0:Call("AiriLogin")
end

function slot0.TranscodeRequest(slot0)
	slot0:Call("TranscodeRequest")
end

function slot0.LoginWithTranscode(slot0, slot1, slot2)
	slot0:Call("LoginWithTranscode", slot1, slot2)
end

function slot0.LoginWithSocial(slot0, slot1, slot2, slot3)
	slot0:Call("LoginWithSocial", slot1, slot2, slot3)
end

function slot0.LoginWithDevice(slot0)
	slot0:Call("LoginWithDevice")
end

function slot0.AiriBuy(slot0, slot1, slot2, slot3)
	slot0:Call("AiriBuy", slot1, slot2, slot3)
end

function slot0.LinkSocial(slot0, slot1, slot2, slot3)
	slot0:Call("LinkSocial", slot1, slot2, slot3)
end

function slot0.UnlinkSocial(slot0, slot1)
	slot0:Call("UnlinkSocial", slot1)
end

function slot0.IsSocialLink(slot0, slot1)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("IsSocialLink", slot1)
	else
		return false
	end
end

function slot0.GetSocialName(slot0, slot1)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("GetSocialName", slot1)
	else
		return "none"
	end
end

function slot0.GetIsBirthSet(slot0)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("GetIsBirthSet")
	end

	return true
end

function slot0.SetBirth(slot0, slot1)
	slot0:Call("SetBirth", slot1)
end

function slot0.ClearAccountCache(slot0)
	slot0:Call("ClearAccountCache")
end

function slot0.GameShare(slot0, slot1, slot2)
	slot0:Call("GameShare", slot1, slot2)
end

function slot0.VerificationCodeReq(slot0, slot1)
	slot0:Call("VerificationCodeReq", slot1)
end

function slot0.OpenYostarHelp(slot0)
	slot0:Call("OpenYostarHelp")
end

function slot0.OnAppPauseForSDK(slot0, slot1)
	slot0:Call("OnAppPauseForSDK", slot1)
end

function slot0.UserEventUpload(slot0, slot1)
	slot0:Call("UserEventUpload", slot1)
end

function slot0.CheckAiriCanBuy(slot0)
	if PLATFORM_CODE == PLATFORM_US or PLATFORM_CODE == PLATFORM_JP then
		return slot0:Get("CheckAiriCanBuy")
	else
		return true
	end
end

function slot0.CheckHadAccountCache(slot0)
	if PLATFORM_CODE == PLATFORM_JP then
		return slot0:Get("CheckHadAccountCache")
	else
		return true
	end
end

AIRI_LAST_GEN_TIME = 0
AIRI_GEN_LIMIT_TIME = 30

function GetAiriGenCodeTimeRemain()
	if AIRI_GEN_LIMIT_TIME < Time.realtimeSinceStartup - AIRI_LAST_GEN_TIME or AIRI_LAST_GEN_TIME == 0 then
		return 0
	else
		return math.floor(AIRI_GEN_LIMIT_TIME - slot0)
	end
end

function slot0.UserCenter(slot0)
	slot0:Call("UserCenter")
end

function slot0.BugReport(slot0)
	slot0:Call("BugReport")
end

function slot0.StoreReview(slot0)
	slot0:Call("StoreReview")
end

function slot0.QueryWithProduct(slot0)
	slot0:Call("QueryWithProduct")
end

function slot0.ShareImg(slot0, slot1, slot2)
	slot0:Call("ShareImg", slot1, slot2)
end

function slot0.SwitchAccount(slot0)
	slot0:Call("SwitchAccount")
end

function slot0.CompletedTutorial(slot0)
	slot0:Call("CompletedTutorial")
end

function slot0.UnlockAchievement(slot0)
	slot0:Call("UnlockAchievement")
end

function slot0.GetDeviceId(slot0)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("GetDeviceId")
	elseif PLATFORM_CODE == PLATFORM_KR then
		return slot0:Get("GetDeviceModel")
	else
		return ""
	end
end

function InLoginScene()
	if getProxy(ContextProxy):getCurrentContext() and slot0.mediator == LoginMediator then
		return true
	end

	return false
end
