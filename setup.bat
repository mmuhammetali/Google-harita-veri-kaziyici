@echo off

python --version
if errorlevel 1 (
    echo Python bulunamadi. Lütfen Python'un yüklü olduğundan ve PATH'e eklendiğinden emin olun.
    exit /b 1
)

pip --version
if errorlevel 1 (
    echo Pip bulunamadi. Lütfen pip'in yüklü olduğundan ve PATH'e eklendiğinden emin olun.
    exit /b 1
)

echo requirements.txt dosyasındaki kütüphaneler kuruluyor...
pip install -r requirements.txt

if errorlevel 1 (
    echo Kütüphaneler kurulurken bir hata oluştu.
    exit /b 1
)

echo Kütüphaneler başarıyla kuruldu.
exit /b 0
