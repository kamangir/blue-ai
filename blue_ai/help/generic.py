from typing import List, Dict, Callable, Union

from blue_ai.help.build_README import help_build_README
from blue_ai.help.pypi import help_functions as help_pypi
from blue_ai.help.pylint import help_pylint
from blue_ai.help.pytest import help_pytest
from blue_ai.help.test import help_functions as help_test


def help_functions(
    plugin_name: str = "blue_ai",
) -> Union[Callable, Dict[str, Union[Callable, Dict]]]:
    return {
        "build_README": lambda tokens, mono: help_build_README(
            tokens,
            mono=mono,
            plugin_name=plugin_name,
        ),
        "pypi": help_pypi(plugin_name=plugin_name),
        "pylint": lambda tokens, mono: help_pylint(
            tokens,
            mono=mono,
            plugin_name=plugin_name,
        ),
        "pytest": lambda tokens, mono: help_pytest(
            tokens,
            mono=mono,
            plugin_name=plugin_name,
        ),
        "test": help_test(plugin_name=plugin_name),
    }
