chrome.action.onClicked.addListener((tab) => {
  chrome.tabs.query({ currentWindow: true, active: true }, function (tabs) {
    let tab = tabs[0];
    if (tab != null) {
      let url = tab.pendingUrl || tab.url;
      if (url.startsWith("https://t.co")) {
        let newUrl = `http://tco.tiye.me?url=${url}`;
        console.log("new tab", url, tab.id);
        chrome.tabs.update(tab.id, { url: newUrl });
      } else {
        console.warn("unknown url:", url);
      }
    } else {
      console.warn("no selected tab");
    }
  });
});
