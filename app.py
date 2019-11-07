from flask import Flask, render_template, jsonify
import psycopg2 as psql

app = Flask(__name__)
db = psql.connect("dbname=geovis2")


@app.route('/')
def cabanes():
    c = db.cursor()
    c.execute("""
        SELECT nom, ST_X(pt)::integer, ST_Y(pt)::integer
        FROM cabanes
    """)
    rows = [{
        'nom': l[0], 'x': l[1], 'y': l[2]
    } for l in c]
    c.close()
    return render_template('liste_cabanes.html', 
        cabanes=rows
    )


@app.route('/<region>')
def cabanes_par_region(region):
    c = db.cursor()
    c.execute("""
        SELECT nom, ST_X(pt)::integer, ST_Y(pt)::integer
        FROM cabanes
        WHERE region = %s
    """, (region,))
    rows = [{
        'nom': l[0], 'x': l[1], 'y': l[2]
    } for l in c]
    c.close()
    return render_template('liste_cabanes.html', 
        cabanes=rows
    )

@app.route('/cabanes.json')
def cabanes_json():
    c = db.cursor()
    c.execute("""
        SELECT nom, ST_X(pt)::integer, ST_Y(pt)::integer
        FROM cabanes
    """)
    rows = [{
        'nom': l[0], 'x': l[1], 'y': l[2]
    } for l in c]
    c.close()
    return jsonify(rows)


if __name__ == '__main__':
    app.run(debug=True)
