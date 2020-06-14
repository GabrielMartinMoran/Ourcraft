function getImageTag(url) {
  return `<img src="${url}" style="width: 1.5rem"></img>`;
}

const TAGS = [
  { 'key': 'heart_img', 'value': getImageTag("https://gamepedia.cursecdn.com/minecraft_es_gamepedia/d/d9/Heart.png?version=1da811ed114de18b9e78c0c036051244") },
  { 'key': 'strength_img', 'value': getImageTag("https://gamepedia.cursecdn.com/minecraft_gamepedia/8/8b/Strength.png?version=dc72afc37e7e89eb58bdf20ab08ff10e") },
  { 'key': 'nightvision_img', 'value': getImageTag("https://gamepedia.cursecdn.com/minecraft_gamepedia/9/91/Night_Vision.png?version=ab01d5e091f4a96fd3cf093e35960dba") },
  { 'key': 'slowness_img', 'value': getImageTag("https://gamepedia.cursecdn.com/minecraft_gamepedia/7/7e/Slowness.png?version=14275b91ffc19cf9a7c72171ea2e572d") },
  { 'key': 'dolphinsgrace_img', 'value': getImageTag("https://gamepedia.cursecdn.com/minecraft_gamepedia/8/82/Dolphin%27s_Grace.png?version=a54b4d95d5dd62d01a90a0f3f8d5e617") },
  { 'key': 'conduitpower_img', 'value': getImageTag("https://gamepedia.cursecdn.com/minecraft_gamepedia/e/ef/Conduit_Power.png?version=5928bbfb94d4cd7ee7926a1d7e2ce70d") },
  { 'key': 'miningfatigue_img', 'value': getImageTag("https://gamepedia.cursecdn.com/minecraft_gamepedia/c/ca/Mining_Fatigue.png?version=a9f717dcc65dd1222a9ae918e2effc99") },
  { 'key': 'speed_img', 'value': getImageTag("https://gamepedia.cursecdn.com/minecraft_gamepedia/9/94/Speed.png?version=abfd2445d65fb0d5f10b2aeb6c4b5220") },
  { 'key': 'hunger_img', 'value': getImageTag("https://gamepedia.cursecdn.com/minecraft_gamepedia/5/5a/Hunger.png?version=dc7bced9e6d6b12348365395c0b038dc") },
];
function replaceTags() {
  const regex = /{{ *([\w\d]+) *, *(\d+) *}}/gm;
  while ((m = regex.exec(document.body.innerHTML)) !== null) {
    if (m.index === regex.lastIndex) {
      regex.lastIndex++;
    }
    let toReplace = '';
    for (let i = 0; i < parseInt(m[2]); i++) {
      toReplace += TAGS.find(x => x.key === m[1]).value;
    }
    document.body.innerHTML = document.body.innerHTML.replace(m[0], toReplace);
  }
}

/*function includeHTML() {
  var z, i, elmnt, file, xhttp;
  // Loop through a collection of all HTML elements: 
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    // search for elements with a certain atrribute:
    file = elmnt.getAttribute("include-html");
    if (file) {
      // Make an HTTP request using the attribute value as the file name:
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function () {
        if (this.readyState == 4) {
          if (this.status == 200) { elmnt.innerHTML = this.responseText; }
          if (this.status == 404) { elmnt.innerHTML = "Page not found."; }
          // Remove the attribute, and call this function once more:
          elmnt.removeAttribute("include-html");
          includeHTML();
        }
      }
      xhttp.open("GET", file, true);
      xhttp.send();
      return;
    }
  }
}*/
function includeHTML() {
  var z, i, elmnt, file, xhttp;
  // Loop through a collection of all HTML elements: 
  z = document.getElementsByTagName("include");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    // search for elements with a certain atrribute:
    file = elmnt.getAttribute("src");
    if (file) {
      // Make an HTTP request using the attribute value as the file name:
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function () {
        if (this.readyState == 4) {
          if (this.status == 200) { elmnt.innerHTML = this.responseText; }
          if (this.status == 404) { elmnt.innerHTML = "Page not found."; }
          // Remove the attribute, and call this function once more:
          elmnt.removeAttribute("src");
          includeHTML();
          replaceTags();
        }
      }
      var href = window.location.href;
      var dir = href.substring(0, href.lastIndexOf('/')) + "/";
      xhttp.open("GET", dir + file, true);
      xhttp.send();
      return;
    }
  }
}

function onLoad() {
  includeHTML();
  replaceTags();
}

$(document).ready(function () {
  onLoad();
});

