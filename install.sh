#!/bin/bash
npm i
echo "#!/bin/bash
INSTALL_DIR=\"$(pwd)\"
cd \$INSTALL_DIR
TOKEN=\$(node token_fetcher.js)
PRETOK=\"Authorization: Bearer \"
curl -sH 'Accept: application/json' -H \"\${PRETOK}\${TOKEN}\" https://api.epitest.eu/me/2020 > buffer
PROJECT=\$(cat buffer | jq '.[-1][\"project\"][\"slug\"]')
NBTEST=\$(cat buffer | jq '.[-1]' | sed -n 's/.*\"count\": \([0-9]*\).*/\1/p' | paste -sd+ | bc)
TESTPASSED=\$(cat buffer | jq '.[-1]' | sed -n 's/.*\"passed\": \([0-9]*\).*/\1/p' | paste -sd+ | bc)
printf \"  \$(python -c \"print(\${TESTPASSED} / \${NBTEST} * 100)\")%% \${PROJECT}  \n\"
rm -rf buffer" > NLKELS.sh
chmod 755 NLKELS.sh
node credential.js