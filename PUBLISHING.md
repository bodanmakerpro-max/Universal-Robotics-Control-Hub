# Publish this folder to GitHub

The package has already been organized as a repository, but **creating a new repository on GitHub requires an account action**.

### Option A: GitHub website (no terminal)

1. Open https://github.com/new while signed in as `bodanmakerpro-max`.
2. Enter repository name **Universal-Robotics-Control-Hub**. Choose public/private as you prefer.
3. Make the new repo **empty**: do not initialize README, `.gitignore` or license.
4. Open the new repository and use **Add file > Upload files**, then upload the extracted folder contents (not the outer ZIP). GitHub browser uploads may have file-count/size limits. For a full folder, use Git instead.

### Option B: Windows PowerShell and Git

1. Create the **same empty repository** on GitHub.
2. Extract the ZIP and open PowerShell inside the `Universal-Robotics-Control-Hub` folder.
3. Make sure Git for Windows is installed (`git --version`).
4. Run:

```powershell
powershell -ExecutionPolicy Bypass -File .\PUBLISH_TO_GITHUB.ps1
```

Or run these manually:

```powershell
git init
git add .
git commit -m "Initial Universal Robotics Control Hub documentation and design files"
git branch -M main
git remote add origin https://github.com/bodanmakerpro-max/Universal-Robotics-Control-Hub.git
git push -u origin main
```

GitHub may prompt you to authenticate. Do not paste tokens into files or commit them.

Once published, the intended repository page is `https://github.com/bodanmakerpro-max/Universal-Robotics-Control-Hub`.