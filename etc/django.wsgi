CONFIG = {
    'mode': 'django',
    #'environment': {
    #    'PYTHONPATH': '/home/box/web/ask',
    #},
    'working_dir': '/home/box/web/ask/ask',
    # 'user': 'www-data',
    # 'group': 'www-data',
    'args': (
        # '--bind=127.0.0.1:8000',
        '--workers=1',
		# '--daemon'
        # '--worker-class=egg:gunicorn#sync',
        # '--timeout=30',
        'ask.wsgi:application',
    ),
}
