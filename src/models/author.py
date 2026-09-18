# -*- coding: utf-8 -*-

"""
Classe Author
"""

from dataclasses import dataclass, field
from typing import Optional


@dataclass
class Author:
    """Auteur d'un livre."""
    id: Optional[int] = field(default=None, init=False)
    last_name: str
    first_name: str
    biography: str

    def __str__(self) -> str:
        return f"{self.first_name}, {self.last_name}, {self.biography}"