# -*- coding: utf-8 -*-

"""
Classe MainCharacter
"""

from abc import ABC
from dataclasses import dataclass, field

from typing import Optional

from .book import Book


@dataclass
class MainCharacter:
    """Auteur d'un livre."""
    id: Optional[int] = field(default=None, init=False)
    last_name: str
    first_name: str
    book: Book | None = field(default=None, init=False)

    def __str__(self) -> str:
        return f"{self.first_name} {self.last_name}" + \
               (f", {self.book}" if self.book is not None else '')