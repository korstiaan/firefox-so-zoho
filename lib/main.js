var pageMod = require("sdk/page-mod");
var self = require("sdk/self");

pageMod.PageMod({
  include: /^http.*zoho.com.*buginfo.*$/,
  contentStyleFile: self.data.url("style.css"),
  contentScriptFile: [self.data.url("jquery-1.11.1.min.js"), self.data.url("script.js")]
});