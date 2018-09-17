import psycopg2
conn = psycopg2.connect("dbname='testpostgis'host='localhost' user='me'")
cur = conn.cursor()
sql = """SELECT "DIP_DIR","DIP", ST_AsGeoJSON(the_geom) from teststrati;"""
cur.execute(sql)
result = cur.fetchone()
print result