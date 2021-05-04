const puppeteer = require('puppeteer');
(async () => {
  const browser = await puppeteer.launch({
    args: ["--user-data-dir=./Google/Chrome/User Data/"],
    headless: false,
    executablePath: '/bin/google-chrome'
  });
  const page = await browser.newPage();
  await page.goto('https://my.epitech.eu/index.html#2020/all/all');
  const elements = await page.$x('/html/body/div/div/a/span');
  if (elements[0]) {
    await elements[0].click();
  }
  const localStorageData = await page.evaluate(() => localStorage.getItem('argos-elm-openidtoken'));
  console.log(localStorageData);
  await browser.close();
})();