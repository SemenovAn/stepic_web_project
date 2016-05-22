CONFIG = {
    'mode': 'wsgi',
    'python': '/usr/bin/python3',
    'environment': {
        'PYTHONPATH': '/home/box/web/ask',
    },
    'working_dir': '/home/box/web/ask/ask',
     'user': 'www-data',
     'group': 'www-data',
    'args': (
        '--bind=0.0.0.0:8000',
        '--workers=2',
		# '--daemon'
        # '--worker-class=egg:gunicorn#sync',
        '--timeout=15',
        #'--log-level=debug',
        'ask.wsgi:application',
    ),
}
