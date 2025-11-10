# Clean Reset Input Layout (Win11 Bug)

# Get your language list
$LangList = Get-WinUserLanguageList

# Fix the InputMethodTips to use only Indian English keyboard
$LangList[0].InputMethodTips.Clear()
$LangList[0].InputMethodTips.Add("4009:00000409")  # This maps properly to en-IN (India QWERTY)

# Apply the corrected language list
Set-WinUserLanguageList $LangList -Force

############################################
##  Alternate Fix (force Indian layout only)
############################################
# $LangList = New-WinUserLanguageList en-IN
# Set-WinUserLanguageList $LangList -Force
