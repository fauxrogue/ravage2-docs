if exist "./.venv" rmdir /s /q "./.venv"
if %errorlevel% neq 0 exit /b %errorlevel%

python3 -m venv "./.venv"
if %errorlevel% neq 0 exit /b %errorlevel%

call .venv/Scripts/activate
if %errorlevel% neq 0 exit /b %errorlevel%

pip3 install -r "./requirements.txt"
if %errorlevel% neq 0 exit /b %errorlevel%
