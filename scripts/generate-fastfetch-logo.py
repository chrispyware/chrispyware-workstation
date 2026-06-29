#!/usr/bin/env python3
from pathlib import Path

WHITE = "\033[38;2;249;249;249m"
GREEN = "\033[38;2;34;225;86m"
RESET = "\033[0m"

lines = [
    ("  ██╗     ██████╗ ", "██╗    ██╗"),
    ("  ╚██╗   ██╔════╝ ", "██║    ██║"),
    ("   ╚██╗  ██║      ", "██║ █╗ ██║"),
    ("   ██╔╝  ██║      ", "██║███╗██║"),
    ("  ██╔╝   ╚██████╗ ", "╚███╔███╔╝"),
    ("  ╚═╝     ╚═════╝ ", " ╚══╝╚══╝ "),
]

output = "\n".join(
    f"{WHITE}{left}{GREEN}{right}{RESET}"
    for left, right in lines
) + "\n"

out_path = Path("assets/ascii/cw.txt")
out_path.parent.mkdir(parents=True, exist_ok=True)
out_path.write_text(output)

print(f"Generated {out_path}")
