#Requires AutoHotkey v2.0
; zh-punct

; CapsLock + M 触发标点模式
~CapsLock & m:: {
    ; 保存当前大写锁定状态
    originalCapsState := GetKeyState("CapsLock", "T")
    
    ; 启动输入捕获
    ih := InputHook("L1 M")
    ih.Start()
    ih.Wait()
    key := StrLower(ih.Input)

    ; 优化标点映射
    if (key = "j") 
        Send "，"
    else if (key = "k") 
        Send "。"
    else if (key = "l") 
        Send "？"
    else if (key = "u") 
        Send "："
    else if (key = "i") 
        Send "、"
    else if (key = "h") 
        Send "！"
    else if (key = "n") 
        Send "；"

    
    ; 恢复原始大写锁定状态
    if (originalCapsState != GetKeyState("CapsLock", "T")) {
        SetCapsLockState(originalCapsState ? "On" : "Off")
    }
    
    ; 阻止m键输出
    return true
}