python -m pip install --upgrade pip

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "swigwin-4.0.2.zip" ".\"
copy-item -path "swigwin-4.0.2\swig.exe" -destination ".\"

pip install torch==1.4.0 --quiet  --find-links https://download.pytorch.org/whl/cpu/torch_stable.html --upgrade
pip install -r requirements.txt