# ----------------------------------------------------------------------------------------
# Add Sidebar Shortcuts

mysides=/usr/local/bin/mysides

# xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance
# sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
# sudo xcodebuild -license

if [ ! -e $mysides ]
  then
    echo "install mysides..."
    git clone https://github.com/mosen/mysides.git
    cd mysides/
    make build
    cd build/Release

    cp mysides "${mysides}"
    cd ../../../
    rm -rf mysides
  else
    echo 'mysides is installed'
fi



readlinkf(){ perl -MCwd -e 'print Cwd::abs_path shift' "$1";}


WORK_DIR="file://$(readlinkf ~/Dropbox/WORK/)"

echo 'before'
$mysides list
$mysides remove "All My Files" &> /dev/null
$mysides remove "Documents" &> /dev/null
$mysides remove "Downloads" &> /dev/null
$mysides remove "Creative Cloud Files" &> /dev/null
# remove Recents:
$mysides remove "myDocuments.cannedSearch" &> /dev/null


# temp
$mysides remove "CODE_GIT" &> /dev/null
mysides add "CODE_GIT" "file://$(readlinkf ~/Desktop/CODE_GIT/)"

$mysides remove "WORK" &> /dev/null
mysides add "WORK" "file://$(readlinkf ~/Dropbox/WORK/)"

$mysides remove "CODE_ADDITIONS" &> /dev/null
mysides add "CODE_ADDITIONS" "file://$(readlinkf ~/Dropbox/CODE_ADDITIONS/)"



echo 'after'
$mysides list

killall "Finder" &> /dev/null
