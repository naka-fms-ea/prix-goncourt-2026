# -*- coding: utf-8 -*-

"""
Classe Dao[Address]
"""

from models.author import Author
from daos.dao import Dao
from dataclasses import dataclass
from typing import Optional

@dataclass
class AuthorDao(Dao[Author]):
    def create(self, author: Author) -> int:
        """Crée en BD l'entité Author correspondant au auteur author

        :param author: à créer sous forme d'entité author en BD
        :return: l'id de l'entité insérée en BD (0 si la création a échoué)
        """

        with Dao.connection.cursor() as cursor:
            sql = "INSERT INTO pg_auteur (au_nom_auteur, au_prenom_auteur, au_biographie) VALUES (%s, %s, %s)"

            try:
                cursor.execute(sql, (author.last_name, author.first_name, author.biography))
                Dao.connection.commit()
                author_id = cursor.lastrowid
            except Dao.connection.IntegrityError:
                print("Author already exists!")
                author_id = 0
            except Dao.connection.DatabaseError as error:
                print(error)
                author_id = 0

        ...
        return address_id

    def read(self, id_author: int) -> Optional[Author]:
        """Renvoit l'auteur correspondant à l'entité dont l'id est id_author
           (ou None s'il n'a pu être trouvé)"""
        author: Optional[Author]

        with Dao.connection.cursor() as cursor:
            sql = "SELECT * FROM pg_auteur WHERE id_address=%s"
            cursor.execute(sql, (id_author,))
            record = cursor.fetchone()
        if record is not None:
            author = Author(record['au_nom_auteur'], record['au_prenom_auteur'], record['au_biographie'])
            author.id = record['au_id_auteur']
        else:
            author = None

        return author

    def readall(self) -> list:
        """Renvoit les auteurs correspondant à l'entité Author
           (ou None s'il n'a pu être trouvé)"""

        authors: list = []

        with Dao.connection.cursor() as cursor:
            sql = "SELECT * FROM pg_auteur"
            cursor.execute(sql)
            record = cursor.fetchall()
        if record is not None:
            for row in record:
                authors = Author(row['au_nom_auteur'], row['au_prenom_auteur'], row['au_biographie'])
        else:
            authors = None

        return authors

    def update(self, author: Author) -> None:
        """Met à jour en BD l'entité Author correspondant à author, pour y correspondre

                :param author: auteur déjà mis à jour en mémoire
                :return: True si la mise à jour a pu être réalisée
                """

        update_boolean = True

        with Dao.connection.cursor() as cursor:

            sql = "UPDATE pg_auteur SET au_nom_auteur = %s, au_prenom_auteur = %s, au_biographie = %s WHERE au_id_auteur = %s)"

            try:
                cursor.execute(sql, (author.last_name, author.first_name, author.biography, author.id))
                Dao.connection.commit()
            except Dao.connection.IntegrityError:
                print("Author already exists!")
                update_boolean = False
            except Dao.connection.DatabaseError as error:
                print(error)
                update_boolean = False

        ...
        return update_boolean

    def delete(self, author: Author) -> bool:
        """Supprime en BD l'entité Author correspondant à author

        :param author: author dont l'entité Author correspondante est à supprimer
        :return: True si la suppression a pu être réalisée
        """

        delete_boolean = True

        with Dao.connection.cursor() as cursor:

            sql = "DELETE FROM pg_auteur WHERE id_address = %s)"

            try:
                cursor.execute(sql, (author.id,))
                Dao.connection.commit()
            except Dao.connection.IntegrityError as error:
                print(error)
                delete_boolean = False

        ...
        return delete_boolean