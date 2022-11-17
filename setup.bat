if exist "./env" rmdir /s /q "./env"
if %errorlevel% neq 0 exit /b %errorlevel%

python3 -m venv "./env"
if %errorlevel% neq 0 exit /b %errorlevel%

call env/Scripts/activate
if %errorlevel% neq 0 exit /b %errorlevel%

pip3 install -r "./requirements.txt"
if %errorlevel% neq 0 exit /b %errorlevel%
