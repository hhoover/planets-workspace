# API Spec workspace and Flask App for demoing APIOps

This application contains: one flask app in `app.py`. It serves up data about planets from [NASA data](https://solarsystem.nasa.gov/moons/in-depth/) at `/planets` and `/planets/<position>`.

Run it like this:

```
FLASK_APP=app.py python -mflask run
```

In its more portable form, run it as a Docker Container:
```
docker run -d --name planets -p 5000:5000 kongaaron/flask-planets
```

To build and tag a new image (see deploy.sh):
```
docker build -t kongaaron/flask-planets:1.0 -t kongaaron/flask-planets:latest .
```
Once you tag and build, upload to `hub.docker.com`:
`docker push kongaaron/flask-planets`
