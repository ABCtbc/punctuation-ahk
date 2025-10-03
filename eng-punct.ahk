#Requires AutoHotkey v2.0
; eng-punct

; CapsLock + U 触发标点模式
~CapsLock & u:: {
    ; 保存当前大写锁定状态
    originalCapsState := GetKeyState("CapsLock", "T")
    
    ; 启动输入捕获
    ih := InputHook("L1 U")
    ih.Start()
    ih.Wait()
    key := StrLower(ih.Input)

    ; 优化标点映射
    if (key = "j")
        Send ","
    else if (key = "k") 
        Send "."
    else if (key = "l") 
        Send "?"
    else if (key = "u") 
        Send ":"
    else if (key = "i") 
        Send ";"
    else if (key = "o") ;英文双引号
        Send '"'
    else if (key = "p") ;英文单引号 
        Send "'" 
    else if (key = "y") ;英文连字符
        Send "-" 
    else if (key = "b") ;英文下划线
        Send "_"

    ; 恢复原始大写锁定状态
    if (originalCapsState != GetKeyState("CapsLock", "T")) {
        SetCapsLockState(originalCapsState ? "On" : "Off")
    }
    
    ; 阻止u键输出
    return true
}