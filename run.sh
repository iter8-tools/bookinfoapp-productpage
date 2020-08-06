#!/bin/bash
uwsgi --http 0.0.0.0:$port --wsgi-file productpage.py --callable app_dispatch
