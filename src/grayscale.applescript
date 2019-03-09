tell application "System Preferences"
    reveal anchor "Seeing_Display" of pane id "com.apple.preference.universalaccess"
end tell

tell application "System Events" to tell process "System Preferences"
    repeat while not (exists of checkbox "Use grayscale" of group 1 of window "Accessibility")
        delay 0.1
    end repeat
    set theCheckbox to checkbox "Use grayscale" of group 1 of window "Accessibility"
    tell theCheckbox
        # If the checkbox is not checked, check it to turn grayscale on
        if not (its value as boolean) then
            set checked to true
            click theCheckbox
        else # else turn grayscale off
            set checked to false
            click theCheckbox
        end if
    end tell
end tell

tell application "System Preferences"
    quit
end tell