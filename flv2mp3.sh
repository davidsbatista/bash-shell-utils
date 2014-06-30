#!/bin/sh
# this script should convert files from FLV to WAV and then to MP3
echo " "
echo "  Welcome to FLV to MP3 converter!  version 0.1"
echo " "
infile_name="$@"
# exit if the user did not enter anything:
if [ -z "$infile_name" ]; then
    echo " "
    echo "You did not tell me the file name, so I will exit now."
    exit
fi
echo " "
ffmpeg -i "$infile_name" -acodec pcm_s16le -ac 2 -ab 128k -vn -y "${infile_name%.flv}.wav"
lame --preset cd "${infile_name%.flv}.wav" "${infile_name%.flv}.mp3"
rm "${infile_name%.flv}.wav"
echo " "
echo "OK. I'm done! Have fun!"
echo " "
exit 
