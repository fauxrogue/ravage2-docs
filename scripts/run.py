from subprocess import call

# Start server.
args = ['mkdocs', 'serve']
call(' '.join(args), shell=True)
