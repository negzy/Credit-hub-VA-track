# Fix 404 – Upload Files via GitHub Website (No Terminal Needed)

Your repo is **empty**, so GitHub Pages has nothing to show. Upload the files like this:

---

## Step 1: Open your repo

Go to: **https://github.com/negzy/Credit-hub-VA-track**

---

## Step 2: Upload files

1. Click **“Add file”** (green button) → **“Upload files”**.
2. Open this folder on your Mac: **Desktop → Credit-hub-VA-track**.
3. **Drag these files** into the GitHub upload area (do **not** drag the `.git` folder):
   - `dashboard.html`
   - `index.html`
   - `templates.txt`
   - `README.md`
   - `SOP.md`
   - `weekly-cadence.md`
   - `SHARING-GUIDE.md`
   - `google-sheets-template.csv`
   - `.gitignore`
   - `upload-to-github.sh` (optional)
4. Scroll down, add commit message: **“Add VA Command Center files”**.
5. Click **“Commit changes”**.

---

## Step 3: Turn on GitHub Pages

1. In the repo, click **“Settings”**.
2. In the left sidebar, click **“Pages”** (under “Code and automation”).
3. Under **“Build and deployment”**:
   - **Source:** “Deploy from a branch”.
   - **Branch:** choose **“main”** (or **“master”** if that’s the only option).
   - **Folder:** **“/ (root)”**.
4. Click **“Save”**.

---

## Step 4: Wait and test

- Wait **1–2 minutes**.
- Open: **https://negzy.github.io/Credit-hub-VA-track/**
- You should see the VA Command Center (or a redirect to the dashboard).

If you still get 404, wait 5 minutes and try again; sometimes Pages takes a bit to deploy.
