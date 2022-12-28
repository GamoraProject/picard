import sqlite3
import os

def create_sqlite(data_folder, schema_name):
    con = sqlite3.connect(os.path.join(data_folder, "asana_02.sqlite"))
    cur = con.cursor()
    with open(os.path.join(data_folder, schema_name), 'r') as sql_file:
        result_iterator = cur.executescript(sql_file.read())
    con.commit()

if __name__ == "__main__":
    print('Prepare tables data required for running RASAT')
    data_folder = '.'
    asana_small_scheme = 'Dump20221214.sql'
    create_sqlite(data_folder=data_folder, schema_name=asana_small_scheme)
