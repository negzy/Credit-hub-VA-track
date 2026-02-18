# VA Command Center - Quick Start Guide

## 📤 Upload to GitHub (so your VA can access the dashboard)

**Repo:** [github.com/negzy/Credit-hub-VA-track](https://github.com/negzy/Credit-hub-VA-track)

1. **Open Terminal.app** on your Mac (not Cursor’s terminal).
2. Run:
   ```bash
   cd ~/Desktop/Credit-hub-VA-track
   ./upload-to-github.sh
   ```
3. If the script says no remote, run:
   ```bash
   git remote add origin https://github.com/negzy/Credit-hub-VA-track.git
   git branch -M main
   git push -u origin main
   ```
4. **Enable GitHub Pages:** Repo → **Settings → Pages** → Source: **main** → Save.
5. **Share with your VA:** https://negzy.github.io/Credit-hub-VA-track/

---

## 🚀 Setup (Under 30 Minutes)

### Step 1: Open the Dashboard
1. Open `dashboard.html` in your web browser (Chrome, Firefox, or Safari)
2. That's it! The dashboard is ready to use.

### Step 2: Set Up Google Sheets (Optional but Recommended)
1. Open Google Sheets
2. Go to File → Import → Upload
3. Upload `google-sheets-template.csv`
4. You now have three tabs: Engagement Queue, DM Queue, Quick Metrics

### Step 3: Customize Templates
1. Open `templates.txt` in any text editor
2. Replace `{{CREDIT_GPS_LINK}}` with your actual Credit GPS link
3. Replace `{{BOOKING_LINK}}` with your actual booking link
4. Customize any templates to match your voice
5. Save the file (keep it in the same folder as `dashboard.html`)

### Step 4: Add Post Guidelines
1. Open `dashboard.html` in your browser
2. Scroll to "Post Guidelines" section
3. Click in the text boxes and add your group rules
4. They'll save automatically

### Step 5: Share with Your VA

**Option A: GitHub Pages (Free, Recommended - 5 minutes)**
1. Create a free GitHub account at github.com
2. Create a new repository (make it public)
3. Upload all files to the repository
4. Go to Settings → Pages → Select "main" branch → Save
5. GitHub will give you a URL like `https://yourusername.github.io/repo-name`
6. Share that URL with your VA - they can access it from anywhere!

**Option B: Google Drive (Easiest - 2 minutes)**
1. Upload the entire folder to Google Drive
2. Right-click `dashboard.html` → Open with → Google Docs (or share as link)
3. Better: Use Google Drive File Stream and share the folder
4. Your VA downloads the folder and opens `dashboard.html` locally
5. Note: They'll need to download updates when you change templates

**Option C: Netlify Drop (Free - 1 minute)**
1. Go to https://app.netlify.com/drop
2. Drag and drop your entire folder
3. Get instant URL to share
4. Re-upload when you update templates

**Option D: Shared Cloud Folder (Dropbox, OneDrive, etc.)**
1. Upload folder to cloud storage
2. Share folder link with VA
3. VA syncs folder and opens `dashboard.html` locally
4. They'll see updates when you change files

**Important Notes:**
- If using GitHub Pages/Netlify: Templates load automatically from the web
- If using local files: VA needs `templates.txt` in same folder as `dashboard.html`
- Data saves to browser (each person has their own data)
- For shared data, use Google Sheets instead

---

## 📁 Files Included

- **`dashboard.html`** - Main dashboard (open this daily)
- **`templates.txt`** - Reply templates (customize these)
- **`google-sheets-template.csv`** - Import into Google Sheets for backup
- **`SOP.md`** - Complete Standard Operating Procedure
- **`weekly-cadence.md`** - 3-day weekly checklist
- **`README.md`** - This file

---

## 🎯 How It Works

### For Your VA:
1. Opens `dashboard.html` at start of shift
2. Works through Today's 2-Hour Plan (checkboxes)
3. Adds items to Engagement Queue and DM Queue as needed
4. Uses Templates section to copy-paste replies
5. Updates Quick Metrics at end of shift
6. Writes handoff note for you

### For You (Emmanuel):
1. **Same link** – there is no separate admin panel. You and your VA use the same dashboard URL.
2. **How you see what she does:** She pastes the end-of-shift report into a **shared Google Doc**. Open that Doc to see her tasks done, queues, metrics, and handoff note.
3. On the dashboard, paste your shared Google Doc link in the **“For Emmanuel”** box and click **Open shared Doc** for a one-click shortcut.
4. Update templates/guidelines as needed in the dashboard or in `templates.txt`.

---

## 🔧 Customization

### Adding New Templates:
1. Open `templates.txt`
2. Add a new section:
   ```
   ## Template Name
   Your template text here. Use [Name] for names and {{LINK_NAME}} for links.
   ```
3. Save the file
4. Refresh `dashboard.html` - templates will load automatically

### Changing Links:
- Edit `templates.txt` and replace placeholders:
  - `{{CREDIT_GPS_LINK}}` → Your Credit GPS URL
  - `{{BOOKING_LINK}}` → Your booking calendar URL

### Modifying Dashboard Colors:
- Open `dashboard.html` in a text editor
- Find the `<style>` section
- Change colors:
  - `#ff6600` = Orange accent color
  - `#000` = Black background
  - `#1a1a1a` = Dark gray sections

---

## 💾 Data Storage

- All data saves automatically to browser's LocalStorage
- Data persists between sessions
- To reset: Clear browser data or use browser's developer tools
- For backup: Copy data to Google Sheets weekly

---

## 📝 Quick Reference

**Daily Tasks:**
- 10 min: Check notifications
- 30 min: Reply to comments
- 30 min: Welcome + onboarding
- 30 min: Emmanuel Admin DMs
- 20 min: Post engagement prompt
- 5 min: Update metrics + handoff

**Key Rules:**
- ONE question only in DMs, then direct to next step
- Always check Post Guidelines before posting
- Always customize templates (don't use as-is)
- Update metrics at end of every shift

---

## 🆘 Troubleshooting

**Dashboard not saving?**
- Make sure you're using a modern browser
- Check that JavaScript is enabled
- Try refreshing the page

**Templates not showing?**
- Make sure `templates.txt` is in the same folder as `dashboard.html`
- Check file name spelling (must be exactly `templates.txt`)
- Refresh the dashboard page

**Want to reset everything?**
- Open browser developer tools (F12)
- Go to Application/Storage → Local Storage
- Delete all items starting with `va-`
- Refresh the page

---

## 🎉 You're Ready!

Your VA can start using this immediately. Everything is designed to be simple, fast, and expandable later if needed.

**Next Steps:**
1. Customize templates with your links
2. Add your Post Guidelines
3. Share files with your VA
4. Have VA read `SOP.md` for training
5. Start tracking!

---

## Questions?

Everything is designed to be self-explanatory, but if you need to modify anything:
- Dashboard: Edit `dashboard.html` (HTML/CSS/JavaScript)
- Templates: Edit `templates.txt` (plain text)
- Workflow: Edit `SOP.md` or `weekly-cadence.md` (Markdown)
