import XMonad
import XMonad.Layout.Spacing
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import System.IO
import System.Process
import XMonad.Hooks.FadeInactive

myLogHook :: X ()
myLogHook = fadeInactiveLogHook fadeAmount
    where fadeAmount = 0.5


startup = do
    spawn "feh --bg-scale ~/Pictures/blue.jpg"
    spawn "nm-applet &"
    spawn "trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 1 --height 12 --transparent true --tint 0x000000 &"


myLayout = avoidStruts (tiled ||| Mirror tiled ||| Full)
    where
        -- default tiling algorithm partitions the screen into two panes
        tiled = spacing 14 $ Tall nmaster delta ratio

        -- The default number of windows in the master pane
        nmaster = 1

        -- Default proportion of screen occupied by master pane
        ratio = 2/3

        -- Percent of screen to increment by when resizing panes
        delta = 5/100

-- Define amount and names of workspaces
myWorkspaces = ["1:main","2:chat","3:misc"]

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar ~/.xmonad/.xmobarrc"
    xmonad $ defaultConfig
        { borderWidth = 0
        , manageHook = manageDocks <+> manageHook defaultConfig
        , logHook = do
            myLogHook
            dynamicLogWithPP xmobarPP
                { ppOutput = hPutStrLn xmproc
                , ppTitle = xmobarColor "blue" "" . shorten 50
                , ppLayout = const "" -- to disable the layout info on xmobar
                }
        , layoutHook = myLayout
        , workspaces = myWorkspaces
        , startupHook = startup
        }
