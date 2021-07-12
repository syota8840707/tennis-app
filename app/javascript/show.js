window.addEventListener('load', () => {
  const side = document.getElementById("menu-js");
  const sidepull = document.getElementById("side-js");
  const sideChild = document.querySelectorAll(".side-list-js");

  side.addEventListener('click', function() {
    if (sidepull.getAttribute("style") == "display:block;") {
      sidepull.removeAttribute("style", "display:block;");
      side.removeAttribute("style", "background-color:#e2eba3;")
    } else {
      sidepull.setAttribute("style", "display:block;");
      side.setAttribute("style", "background-color:#e2eba3;")
    }
  });
  const map = document.getElementById("map-js");
  const mapmain = document.getElementById("map-main-js");
  map.addEventListener('click', function() {
    if (mapmain.getAttribute("style") == "display:block;") {
      mapmain.removeAttribute("style", "display:block;");
      map.removeAttribute("style", "background-color:#e2eba3;")
    } else {
      mapmain.setAttribute("style", "display:block;");
      map.setAttribute("style", "background-color:#e2eba3;")
    }
  });
  sideChild.forEach(function(list) {
    list.addEventListener('mouseover', function() {
    list.setAttribute("style", "background-color:#e2eba3;")
    })
  });
  sideChild.forEach(function(list) {
    list.addEventListener('mouseout', function() {
    list.removeAttribute("style", "background-color:#e2eba3;")
    })
  });
});
