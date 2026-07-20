#!/bin/zsh
# filepath: /path/to/jira2things/run_jira_sync_service.sh

# Change to the project directory
cd /path/to/jira2things

# Show notification that sync is starting
# osascript -e 'display notification "Starting JIRA sync..." with title "JIRA2Things"'

# Activate virtual environment and run the script
source .venv/bin/activate && python main.py

# Check exit code and show appropriate notification
if [ $? -eq 0 ]; then
    # osascript -e 'display notification "JIRA sync completed successfully!" with title "JIRA2Things"'
else
    osascript -e 'display notification "JIRA sync failed. Check logs for details." with title "JIRA2Things" sound name "Basso"'
fi