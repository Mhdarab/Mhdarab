
#!/bin/bash

set -e

# Go to the directory containing setup.sh
cd "$(dirname "$0")"

# ===== PART 1: CREATE PROJECT =====

echo "Creating project…"

# Create project folder
mkdir -p project
cd project

# Initialize Git repository
git init

# Create folders
mkdir -p resources
mkdir -p src/database
mkdir -p src/profile

# Create empty files
touch README.md
touch settings.conf
touch "resources/family picture.jpg"
touch resources/icon.png
touch resources/logo.png
touch src/program.java

# ===== PART 2: GIT COMMITS =====

# 1. First commit
git add .
git commit -m "initial commit"

# 2. Wait for 3 seconds
sleep 3

# 3. Print setup message
echo "Setup project…"

# 4. Write to README.md
echo "Welcome to my project" > README.md

# 5. Remove profile folder
rm -rf src/profile

# 6. Remove family picture
rm "resources/family picture.jpg"

# 7. Second commit
git add -A
git commit -m "Update README and remove unused files"

# 8. Wait for 3 seconds
sleep 3

# 9. Show resources folder contents
echo "Resources folder contents:"
ls -la resources

# 10. Print JavaScript setup message
echo "Setup javascript…"

# 11. Rename program.java to program.js
mv src/program.java src/program.js

# 12. Write JavaScript code
echo "console.log('JavaScript works!');" > src/program.js

# 13. Run JavaScript with Node.js
node src/program.js

# 14. Third commit
git add -A
git commit -m "Convert Java program to JavaScript and add test code"

# 15. Show home folder contents
echo "Home folder contents:"
ls -la ~

# 16. Print completion message
echo "All done!"
# Write your code here