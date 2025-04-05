#! /usr/bin/env bash

function bluer_ai_screen() {
    local task=$1

    if [ "$task" == "detach" ]; then
        local screen_name=${2:-void}
        screen -d $screen_name
        return
    fi

    if [ "$task" == "list" ]; then
        screen -ls
        return
    fi

    if [ "$task" == "resume" ]; then
        screen -r "${@:2}"
        return
    fi

    local screen_name=${2:-bluer_ai-$(abcli_string_timestamp_short)}
    screen -q -S $screen_name -t $screen_name
}
