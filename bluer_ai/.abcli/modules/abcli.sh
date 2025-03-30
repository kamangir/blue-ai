#! /usr/bin/env bash

function bluer_ai() {
    local task=$1

    local function_name=bluer_ai_$task
    if [[ $(type -t $function_name) == "function" ]]; then
        $function_name "${@:2}"
    else
        abcli_log_error "bluer_ai: $task: command not found."
        return 1
    fi
}

function bluer_ai_version() {
    echo $abcli_fullname
}

abcli_env_dot_load \
    caller,filename=config.env,suffix=/../..
