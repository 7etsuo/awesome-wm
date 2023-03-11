local awful         = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup").widget
local beautiful     = require("beautiful")

local M = {}
local _M = {}

local terminal = RC.vars.terminal
local editor = emacs or os.getenv("EDITOR") or "nano"
local editor_cmd = terminal .. " -e " .. editor

M.awesome = {
  { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
  { "manual", RC.vars.terminal .. " -e man awesome" },
  { "edit config", editor_cmd .. " " .. awesome.conffile },
  { "restart", awesome.restart },
  { "quit", function() awesome.quit() end },
}

M.favorite = {
  { "firefox", "firefox", awful.util.getdir("config") .. "/firefox.png" },
  { "&thunderbird", "thunderbird" },
  { "&firefox", "firefox" },
  { "emacs", "emacs" },
  { "screenshooter", "xfce4-screenshooter" }
}

M.audio = {
  --      {"Spotify","/usr/bin/spotify","/usr/share/icons/hicolor/32x32/apps/spotify-client.png"}, 
  --      {"Audacity","/usr/bin/audacity","/usr/share/pixmaps/audacity32.xpm"},
  --      {"Clementine","/usr/bin/clementine","/usr/share/pixmaps/clementine.xpm"},
  --      {"",""},
  --      {"Ex Falso","/usr/bin/exfalso","/usr/share/pixmaps/exfalso.png"},
  --      {"Puddletag","/usr/bin/puddletag","/usr/share/pixmaps/puddletag.png"},
  --      {"TuxGuitar","tuxguitar","/usr/share/pixmaps/tuxguitar.xpm"},
  --      {"Timidity","timidity -ig","/usr/share/pixmaps/timidity.xpm"},
}

M.office = {
  {"ding","/usr/bin/ding","/usr/share/pixmaps/dbook.xpm"},
  {"writer","/usr/bin/libreoffice --writer","/usr/share/icons/hicolor/32x32/apps/libreoffice-writer.png"},
  {"calculation","/usr/bin/libreoffice --calc","/usr/share/icons/hicolor/32x32/apps/libreoffice-calc.png"},
  {"impress","/usr/bin/libreoffice --impress","/usr/share/icons/hicolor/32x32/apps/libreoffice-impress.png"},
  {"base","/usr/bin/libreoffice --base","/usr/share/icons/hicolor/32x32/apps/libreoffice-base.png"},
  {"",""},
  {"pdfshuffler","/usr/bin/pdfshuffler","/usr/share/icons/hicolor/scalable/apps/pdfshuffler.svg"},
  {"pdfchain","/usr/bin/pdfchain","/usr/share/icons/hicolor/32x32/apps/pdfchain.png"},
  {"pdfmod","/usr/bin/pdfmod","/usr/share/icons/hicolor/32x32/apps/pdfmod.png"},
  {"",""},
  {"KMyMoney","/usr/bin/kmymoney","/usr/share/icons/hicolor/32x32/apps/kmymoney.png"},
}

M.development = {
  {"UMLet","/usr/bin/umlet","/usr/share/umlet/img/umlet_logo24.png"},
  {"Ruler","/usr/bin/kruler","/usr/share/kde4/apps/kdewidgets/pics/kruler.png"},
  {"Link Status prüfen","/usr/bin/klinkstatus","/usr/share/icons/hicolor/32x32/apps/klinkstatus.png"},
  {"netbeans","/usr/bin/netbeans","/usr/share/icons/hicolor/32x32/apps/netbeans.png"},
}

M.photo = {
  {"gtkam","/usr/bin/gtkam","/usr/share/gtkam/pixmaps/camera.xpm"},
  {"Gwenview","/usr/bin/gwenview","/usr/share/icons/hicolor/32x32/apps/gwenview.png"},
  {"phototonic","/usr/bin/phototonic","/usr/share/pixmaps/phototonic.png"},
  {"digikam","/usr/bin/digikam","/usr/share/icons/oxygen/base/22x22/apps/digikam.png"},
  --      {"SQLiteBrowser","/usr/bin/sqlitebrowser"},
  {"",""},
  {"RawTherapee","rawtherapee","/usr/share/pixmaps/rawtherapee.xpm"},
  {"GIMP","/usr/bin/gimp -n","/usr/share/pixmaps/gimp.xpm"},
}

M.photo_2 = {
  --      {"FotoWall","/usr/bin/fotowall","/usr/share/pixmaps/fotowall.xpm"},
  {"Hugin","/usr/bin/hugin","/usr/share/pixmaps/hugin.png"},
  {"luminance-hdr","/usr/bin/luminance-hdr","/usr/share/icons/hicolor/32x32/apps/luminance-hdr.png"},
  --      {"PhotoPrint","/usr/bin/photoprint","/usr/share/icons/hicolor/48x48/apps/fotoprint.png"},
  {"PTBatcherGUI","/usr/bin/PTBatcherGUI","/usr/share/pixmaps/ptbatcher.png"},
  --      {"DNG-Koverter","/usr/bin/dngconverter","/usr/share/icons/hicolor/48x48/apps/kipi-dngconverter.png"},
}

M.graphics = {
  --      {"Scribus","/usr/bin/scribus","/usr/share/pixmaps/scribus.xpm"},
  {"Inkscape","/usr/bin/inkscape","/usr/share/pixmaps/inkscape.xpm"},
  {"Office Draw","/usr/bin/libreoffice --draw","/usr/share/icons/hicolor/32x32/apps/libreoffice-draw.png"},
  --      {"PTBatcherGUI","/usr/bin/PTBatcherGUI"},
}

M.internet = {
  {"Firefox", "firefox", "/usr/share/pixmaps/firefox-esr.png" },
  {"Icedove E-mail","icedove","/usr/share/pixmaps/icedove.xpm"},
  {"dropbox","/usr/bin/dropbox start -i","/usr/share/icons/hicolor/32x32/apps/dropbox.png"},
}

M.games = {
  --      {"MegaGlest","/usr/games/megaglest","/usr/share/pixmaps/megaglest.xpm"},
  --      {"widelands","/usr/games/widelands","/usr/share/icons/hicolor/32x32/apps/widelands.xpm"},
}

M.system = {
  {"Synaptic","kdesudo synaptic-pkexec","/usr/share/synaptic/pixmaps/synaptic_32x32.xpm"},
  {"Apper","kdesudo apper","/usr/share/icons/oxygen/base/22x22/categories/applications-other.png"},
  {"",""},
  {"Systems ettings","kdesudo systemsettings","/usr/share/icons/oxygen/base/22x22/categories/preferences-system.png"},
  {"",""},
  {"Krusader-root","kdesudo krusader","/usr/share/icons/hicolor/32x32/apps/krusader_root.png"},
  {"",""},
  {"K3b","/usr/bin/k3b","/usr/share/icons/hicolor/32x32/apps/k3b.png"},
  {"luckybackup","/usr/bin/luckybackup","/usr/share/pixmaps/luckybackup.png"},
  --      {"luckybackup-root","su-to-root -X -c /usr/bin/luckybackup","/usr/share/pixmaps/luckybackup.xpm"},
  {"Partition Manager","kdesudo partitionmanager","/usr/share/icons/oxygen/base/22x22/apps/partitionmanager.png"},
  {"Gparted","kdesudo gparted","/usr/share/icons/hicolor/32x32/apps/gparted.png"},
  {"Kill","xkill","/usr/share/icons/gnome/32x32/actions/stop.png"},
  {"Refresh","xrefresh","/usr/share/icons/gnome/32x32/actions/reload.png"},
  {"System Information","kinfocenter","/usr/share/icons/oxygen/base/22x22/apps/hwinfo.png"},
  {"System Monitor","/usr/bin/ksysguard","/usr/share/icons/gnome/32x32/apps/ksysguard.png"},
}

M.video = {
  {"SMPlayer","smplayer","/usr/share/pixmaps/smplayer.xpm"},
  {"VLC media player","/usr/bin/qvlc","/usr/share/icons/hicolor/32x32/apps/vlc.xpm"},
  {"Dragon Player","/usr/bin/dragon","/usr/share/icons/hicolor/32x32/apps/dragonplayer.png"},
  --      {"WinFF","/usr/bin/winff","/usr/share/pixmaps/winff.xpm"},
  {"MediaInfo","/usr/bin/mediainfo-gui","/usr/share/pixmaps/mediainfo.xpm"},
}

M.tools = {
  {"Find","kfind","/usr/share/icons/hicolor/32x32/apps/kfind.png"},
  {"File Manager", "dolphin","/usr/share/icons/oxygen/base/22x22/apps/system-file-manager.png" },
  {"Krusader-root","kdesudo krusader","/usr/share/icons/hicolor/32x32/apps/krusader_root.png"},
  {"Terminal", "konsole", "/usr/share/icons/oxygen/base/22x22/categories/applications-utilities.png"},
  {"",""},
  {"Screenshot","/usr/bin/ksnapshot","/usr/share/icons/oxygen/base/22x22/apps/ksnapshot.png"},
  {"Filelight","filelight","/usr/share/icons/hicolor/32x32/apps/filelight.png"},
  {"Editor","kate","/usr/share/icons/hicolor/32x32/apps/kate.png"},
  {"Editor-root","kdesudo kate","/usr/share/icons/hicolor/32x32/apps/kate.png"},
  {"KWrite","kwrite","/usr/share/icons/oxygen/base/22x22/apps/accessories-text-editor.png"},
  {"Klipper","/usr/bin/klipper","/usr/share/icons/oxygen/base/32x32/apps/klipper.png"},
  {"Calculator","/usr/bin/xcalc","/usr/share/icons/oxygen/base/22x22/apps/accessories-calculator.png"},
  {"",""},
  {"Rename","/usr/bin/krename","/usr/share/icons/hicolor/32x32/apps/krename.png"},
  {"KDiff3","/usr/bin/kdiff3","/usr/share/icons/hicolor/32x32/apps/kdiff3.png"},
  {"Kompare","/usr/bin/kompare","/usr/share/icons/hicolor/32x32/apps/kompare.png"},
  --      {"Komparator","/usr/bin/komparator4","/usr/share/icons/hicolor/32x32/apps/komparator4.png"},
  {"",""},
  {"KMix","/usr/bin/kmix","/usr/share/icons/hicolor/32x32/apps/kmix.png"},
}


function _M.get()

  local menu_items = {
    { "awesome", M.awesome, beautiful.awesome_icon },
    { "audio", M.audio, "/usr/share/icons/oxygen/base/22x22/mimetypes/audio-ac3.png" },
    { "office", M.office, "/usr/share/icons/oxygen/base/22x22/categories/applications-office.png" },
    { "development", M.development, "/usr/share/icons/oxygen/base/22x22/categories/applications-development.png" },
    { "photo", M.photo,"/usr/share/icons/oxygen/base/22x22/apps/showfoto.png" },
    { "photo_2", M.photo_2 },
    { "graphics", M.graphics, "/usr/share/icons/oxygen/base/22x22/categories/applications-graphics.png" },
    { "internet", M.internet, "/usr/share/icons/oxygen/base/22x22/categories/applications-internet.png" },
    { "games", M.games, "/usr/share/icons/oxygen/base/22x22/categories/applications-games.png" },
    { "system", M.system, "/usr/share/icons/oxygen/base/22x22/categories/applications-system.png" },
    { "video", M.video, "/usr/share/icons/gnome/32x32/mimetypes/video.png" },
    { "tools", M.tools, "/usr/share/icons/oxygen/base/22x22/categories/applications-utilities.png" },
    { "open terminal", RC.vars.terminal },
    { "favorite", M.favorite }
  }
  return menu_items
end

return setmetatable(
  {},
  { __call = function(_, ...) return _M.get(...) end }
)
