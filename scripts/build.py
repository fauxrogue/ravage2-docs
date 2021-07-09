from pathlib import Path
from shutil import move, rmtree
from subprocess import call

# Build documentation.
args = ['mkdocs', 'build']
call(' '.join(args), shell=True)

# TODO: Remove this once done, it was just a test for building. Or move it to
# the relevant directory.
src = Path(__file__).parents[1].joinpath('site')
dest = Path().home().joinpath('Desktop', 'ravage2_documentation')

# Remove destination if present and copy documentation.
rmtree(dest, ignore_errors=True)
move(src, dest)
