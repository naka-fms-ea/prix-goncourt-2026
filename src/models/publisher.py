# -*- coding: utf-8 -*-

"""
Classe Publisher
"""

from dataclasses import dataclass, field
from typing import Optional


@dataclass
class Publisher:
    """Editeur d'un livre."""
    id: Optional[int] = field(default=None, init=False)
    name: str

    def __str__(self) -> str:
        return f"{self.name}"