*** settings ***
Documentation        Suite de teste da home page

Library    Browser

*** Test cases ***
Home page deve estar online
    New Browser    browser=chromium    headless=False
    New page    Https://Walkdog.Vercel.app

    Get Text    h1    equal    Cuidado e diversão em cada passo
    Take Screenshot
