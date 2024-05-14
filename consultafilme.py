import mysql.connector
import requests

OMDB_API_KEY = 'add sua key aqui'

def connect_to_db():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="p@ssw0rd",
            database="sakila"
        )
        if connection.is_connected():
            print("Conexão com o banco de dados estabelecida com sucesso!")
            return connection
    except mysql.connector.Error as err:
        print(f"Erro: {err}")
        return None

def get_movie_data(movie_title):
    url = f"http://www.omdbapi.com/?t={movie_title}&apikey={OMDB_API_KEY}"
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()
    else:
        return None

def insert_director_data(cursor, first_name, last_name):
    query = """
    INSERT INTO director (first_name, last_name)
    VALUES (%s, %s)
    """
    cursor.execute(query, (first_name, last_name))

def main():
    movies = []
    while True:
        movie_title = input("Digite o nome do filme (ou pressione Enter para finalizar): ")
        if movie_title == "":
            break
        movies.append(movie_title)
    
    db_connection = connect_to_db()
    if not db_connection:
        return

    cursor = db_connection.cursor()
    
    for movie_title in movies:
        movie_data = get_movie_data(movie_title)
        
        if movie_data:
            director_name = movie_data.get('Director')
            if director_name:
                directors = director_name.split(", ")
                for director in directors:
                    names = director.split(' ')
                    first_name, last_name = names[0], ' '.join(names[1:])
                    insert_director_data(cursor, first_name, last_name)
                    db_connection.commit()
                    print(f"Dados do diretor {first_name} {last_name} inseridos com sucesso para o filme {movie_title}!")
            else:
                print(f"Diretor não encontrado para o filme {movie_title}.")
        else:
            print(f"Dados do filme não encontrados para {movie_title}.")

    cursor.close()
    db_connection.close()

if __name__ == "__main__":
    main()
