# -*- coding: utf-8 -*-

"""
Classe JuryMember
"""

from dataclasses import dataclass, field
from typing import Optional


@dataclass
class JuryMember:
    """Membre du jury."""
    id: Optional[int] = field(default=None, init=False)
    last_name: str
    first_name: str
    role: str

    def __str__(self) -> str:
        return f"{self.last_name}, {self.first_name} {self.role}"