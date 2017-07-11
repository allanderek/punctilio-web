python punctilio.py &&
watchmedo shell-command --pattern="*.py;*.jinja" --command="python punctilio.py" .