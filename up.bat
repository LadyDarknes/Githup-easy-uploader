@echo off
cd /d "%~dp0"

echo --- Güncellemeler çekiliyor (pull) ---
git pull --rebase

echo --- Değişiklikler ekleniyor ---
git add .

echo --- Commit atılıyor ---
git commit -m "otomatik commit"

echo --- Push ediliyor ---
git push

echo --- İşlem tamamlandı ---
pause
