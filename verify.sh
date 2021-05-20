echo repo-ex

for i in Grzegorz-Gebala Malika-1989 belaLababidi DCIProject Hamiddci Eko450-eng stasiks1001 BensDevDe midoritiba belowsurface3000 teejayblack Andreydci Sempris ramazankarisan AntonisZaravelas Spearsofcodes naomininnig noureddinalsabbagh; do
  curl https://github.com/$i/repo-ex 2>/dev/null | grep main.README > /dev/null && echo $i ok || echo $i fail https://github.com/$i/repo-ex
done;

# https://github.com/FbW-E05-2/everything-begins-hakt0r
echo everything-begins

for i in Grzegorz-Gebala Malika-1989 belaLababidi \
  DCIProject Hamiddci Eko450-eng stasiks1001 BensDevDe midoritiba\
  belowsurface3000 teejayblack Andreydci Sempris ramazankarisan \
  AntonisZaravelas Spearsofcodes naomininnig noureddinalsabbagh; do
  wget -O- https://raw.githubusercontent.com/FbW-E05-2/everything-begins-$i/main/bar 2>&1 |
    grep -q 200 && echo $i ok || echo $i fail https://raw.githubusercontent.com/FbW-E05-2/everything-begins-$i/main/bar
done

echo MARKDOWN STAGE 1

for i in hakt0r Grzegorz-Gebala Malika-1989 belaLababidi \
  DCIProject Hamiddci Eko450-eng stasiks1001 BensDevDe midoritiba\
  belowsurface3000 teejayblack Andreydci Sempris ramazankarisan \
  AntonisZaravelas Spearsofcodes naomininnig noureddinalsabbagh; do
  wget -O- https://raw.githubusercontent.com/$i/markdown/main/README.md 2>&1 |
    grep -q 200 && echo $i ok || echo $i fail https://raw.githubusercontent.com/$i/markdown/main/README.md
done

echo MARKDOWN STAGE 2

for i in hakt0r Grzegorz-Gebala Malika-1989 belaLababidi \
  DCIProject Hamiddci Eko450-eng stasiks1001 BensDevDe midoritiba\
  belowsurface3000 teejayblack Andreydci Sempris ramazankarisan \
  AntonisZaravelas Spearsofcodes naomininnig noureddinalsabbagh; do
  wget -O- https://raw.githubusercontent.com/$i/markdown/main/README.md 2>&1 |
    grep -q '##' && echo $i ok || echo $i fail https://raw.githubusercontent.com/$i/markdown/main/README.md
done