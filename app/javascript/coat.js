window.addEventListener('load', () => {
  const nav = document.getElementById("nav-right-jp")
  const navList = document.getElementById("right-jp")
  const navleft = document.getElementById("nav-left-jp")
  const navleftlist = document.getElementById("left-jp")
  const footer = document.getElementById("footer-main")
  const footerlist = document.getElementById("all-list-jp")
  const footertitle = document.getElementById("footer-card-title")
  const pullChild = document.querySelectorAll(".all-list")
  
  nav.addEventListener('mouseover', function() {
   this.setAttribute("style", "background-color:#e2eba3;")
   navList.setAttribute("style", "display:block;")
  })
  navList.addEventListener('mouseout', function() {
    nav.removeAttribute("style", "background-color:#e2eba3;")
   navList.setAttribute("style", "display:hidden")
  })
  

  navleft.addEventListener('mouseover', function() {
  this.setAttribute("style", "background-color:#e2eba3;")
   navleftlist.setAttribute("style", "display:block;")
  })
  navleftlist.addEventListener('mouseout', function() {
   navleft.removeAttribute("style", "background-color:#e2eba3;")
   navleftlist.setAttribute("style", "display:hidden")
  })


  footerlist.addEventListener('click', function() {
   footer.setAttribute("style", "display:flex;")
  })
  footertitle.addEventListener('click', function() {
    footer.setAttribute("style", "display:hidden;")
  })  

  pullChild.forEach(function(list) {
    list.addEventListener('mouseover', function() {
    list.setAttribute("style", "background-color:#e2eba3;")
    })
  })
  pullChild.forEach(function(list) {
    list.addEventListener('mouseout', function() {
    list.removeAttribute("style", "background-color:#e2eba3;")
    })
  })
  // 一覧表のjs
  // const cards = document.getElementById("cards-js")
  // const card = document.querySelectorAll(".card-info")
  // card.forEach(function(list) {
  //   list.addEventListener('mouseover', function() {
  //   cards.setAttribute("style", "background-color:#e2eba3;")
  //   })
  // })
  //  card.forEach(function(list) {
  //   list.addEventListener('mouseover', function() {
  //    cards.removeAttribute("style", "background-color:#e2eba3;")
  //   })
  // })
});