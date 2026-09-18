# -*- coding: utf-8 -*-

"""
Classe MainCharacter
"""

from abc import ABC
from dataclasses import dataclass, field

from typing import Optional

from .author import Author
from .publisher import Publisher



@dataclass
class Book:
    """Constructeur d'un livre."""
    id: Optional[int] = field(default=None, init=False)
    title: str
    summary: str
    publication_date: str
    nb_pages: int
    isbn: str
    publisher_price: float
    author: Author | None = field(default=None, init=False)
    publisher: Publisher | None = field(default=None, init=False)

    def __str__(self) -> str:
        course_str = f"Title : {self.title} Publication date : ({self.publication_date} ,\n"
        course_str += f"Summary : {self.summary} ,\n"
        course_str += f"Numbers of pages : {self.title} - ISBN : {self.isbn} – Publisher price : {self.publisher_price}),\n"
        course_str += f"Written by {self.author}, Publish by {self.publisher}" \
            if self.author is not None else "no author" \
            if self.publisher is not None else "no publisher"
        return course_str