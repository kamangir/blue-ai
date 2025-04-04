#! /usr/bin/env bash

function test_bluer_ai_help() {
    local options=$1

    local module
    for module in \
        "@badge" \
        \
        "@browse" \
        \
        "@build_README" \
        \
        "@cat" \
        \
        "@conda" \
        "@conda create" \
        "@conda exists" \
        "@conda list" \
        "@conda rm" \
        \
        "@docker browse " \
        "@docker build " \
        "@docker clear " \
        "@docker eval " \
        "@docker push " \
        "@docker run " \
        "@docker seed " \
        "@docker source " \
        \
        "@env" \
        "@env backup" \
        "@env backup list" \
        "@env dot" \
        "@env dot cat" \
        "@env dot cat" \
        "@env dot cp" \
        "@env dot edit" \
        "@env dot get" \
        "@env dot list" \
        "@env dot load" \
        "@env dot set" \
        \
        "@git" \
        "@git browse" \
        "@git checkout" \
        "@git clone" \
        "@git create_branch" \
        "@git create_pull_request" \
        "@git get_branch" \
        "@git get_repo_name" \
        "@git increment_version" \
        "@git pull" \
        "@git push" \
        "@git recreate_ssh" \
        "@git reset" \
        "@git review" \
        "@git rm" \
        "@git seed" \
        "@git status" \
        "@git sync_fork" \
        \
        "@gpu" \
        "@gpu status" \
        "@gpu status get" \
        "@gpu status show" \
        "@gpu validate" \
        \
        "@init" \
        \
        "@latex" \
        "@latex bibclean" \
        "@latex build" \
        "@latex install" \
        \
        "@list" \
        "@list filter" \
        "@list in" \
        "@list intersect " \
        "@list item" \
        "@list len " \
        "@list log " \
        "@list next" \
        "@list nonempty" \
        "@list prev" \
        "@list resize" \
        "@list sort" \
        \
        "@ls" \
        \
        "@open" \
        \
        "@pause" \
        \
        "@perform_action" \
        \
        "@plugins get_module_name" \
        "@plugins install" \
        "@plugins list_of_external" \
        "@plugins list_of_installed" \
        "@plugins transform" \
        \
        "@publish" \
        "@publish tar" \
        \
        "@pylint" \
        \
        "@pypi" \
        "@pypi browse" \
        "@pypi build" \
        "@pypi install" \
        \
        "@pytest" \
        \
        "@repeat" \
        \
        "@seed" \
        "@seed eject" \
        "@seed list" \
        \
        "@select" \
        \
        "@session" \
        "@session start" \
        \
        "@sleep" \
        \
        "@storage" \
        "@storage clear" \
        "@storage download_file" \
        "@storage exists" \
        "@storage list" \
        "@storage rm" \
        "@storage status" \
        \
        "@test" \
        "@test list" \
        \
        "@terraform" \
        "@terraform cat" \
        "@terraform disable" \
        "@terraform enable" \
        \
        "@watch" \
        \
        "@wifi" \
        "@wifi get_ssid" \
        "@wifi copy_to_sd_card" \
        \
        "bluer_ai_log_list" \
        "bluer_ai_source_caller_suffix_path" \
        "bluer_ai_source_path" \
        \
        "bluer_ai"; do
        abcli_eval ,$options \
            bluer_ai_help $module
        [[ $? -ne 0 ]] && return 1

        abcli_hr
    done

    return 0
}
