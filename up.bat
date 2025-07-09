@echo off
cd /d "%~dp0"

echo --- Uzak branch takibi ayarlanıyor ---
git branch --set-upstream-to=origin/main main 2>NUL

echo --- Güncellemeler çekiliyor (pull) ---
git pull --rebase

echo --- Değişiklikler ekleniyor ---
git add .

echo --- Commit atılıyor ---
git commit -m "otomatik commit"

echo --- Push ediliyor ---
git push --set-upstream origin main

echo --- İşlem tamamlandı ---
pause
