cd ..
if [ -f "wokkagames.zip" ]; then
    rm wokkagames.zip
    echo "Removed old wokkamages.zip"
fi

echo "LICENSE" >> files
echo "pack.mcmeta" >> files
echo "pack.png" >> files
echo "README.md" >> files
find data -type f \
    | grep -v ".txt" \
    | grep -v "/function/debug" \
    >> files


zip -q wokkagames.zip $(cat files)


echo "mcfunction Files:" $(grep -c ".mcfunction$" files)
echo "json Files:" $(grep -c ".json$" files)
echo "nbt Files:" $(grep -c ".nbt$" files)

rm files
