window.addEventListener('load', () => {
  const side = document.getElementById("menu-js");
  const sidepull = document.getElementById("side-js");

  side.addEventListener('click', function() {
    if (sidepull.getAttribute("style") == "display:block;") {
      sidepull.removeAttribute("style", "display:block;");
    } else {
      sidepull.setAttribute("style", "display:block;");
    }
  });
  const map = document.getElementById("map-js");
  const mapmain = document.getElementById("map-main-js");
  map.addEventListener('click', function() {
    console.log(mapmain)
    if (mapmain.getAttribute("style") == "display:block;") {
      mapmain.removeAttribute("style", "display:block;");
    } else {
      mapmain.setAttribute("style", "display:block;");
    }
  });
});
