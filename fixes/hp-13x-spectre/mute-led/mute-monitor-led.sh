#!/usr/bin/env bash

SOUND_DEVICE=/dev/snd/hwC0D0
SUDO=/run/wrappers/bin/sudo
STATE='off'

enable_led() {
    $SUDO hda-verb ${SOUND_DEVICE} 0x20 0x500 0x0B > /dev/null 2>&1 \
                && $SUDO hda-verb ${SOUND_DEVICE} 0x20 0x400 0x7778 > /dev/null 2>&1 
    echo LED enabled
}

disable_led() {
    $SUDO hda-verb ${SOUND_DEVICE} 0x20 0x500 0x0B > /dev/null 2>&1 \
                && $SUDO hda-verb ${SOUND_DEVICE} 0x20 0x400 0x7774 > /dev/null 2>&1
    echo LED disabled
}

monitor_audio_mute() {
    while read -r line; do
        if [[ $line == *"true"* ]]; then
            if [[ $STATE != "on" ]]; then 
                echo "Sound is muted"
                enable_led
                STATE='on'
            fi
        else
            if [[ $STATE != "off" ]]; then 
                echo "Sound is unmuted"
                disable_led
                STATE='off'
            fi
        fi
    done < <(pw-dump -m | jq --unbuffered '.[] | select(.info.props."device.product.id"=="0x9dc8") | .info.params.Route[] | select(.direction=="Output") | .props.mute')
}

monitor_audio_mute
