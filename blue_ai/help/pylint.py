from typing import List

from blue_options.terminal import show_usage, xtra


def help_pylint(
    tokens: List[str],
    mono: bool,
    plugin_name: str = "blue_ai",
) -> str:
    options = xtra(
        "ignore=<ignore>",
        mono=mono,
    )

    callable = f"{plugin_name} pylint"

    if plugin_name == "blue_ai":
        options = f"{options},plugin=<plugin-name>"
        callable = "@pylint"

    return show_usage(
        callable.split(" ")
        + [
            f"[{options}]",
            "[<args>]",
        ],
        f"pylint {plugin_name}.",
        mono=mono,
    )
