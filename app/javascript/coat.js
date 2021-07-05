window.addEventListener('load', () => {
  const nav = document.getElementById("nav-right-jp")
  const navList = document.getElementById("right-jp")
  const navleft = document.getElementById("nav-left-jp")
  const navleftlist = document.getElementById("left-jp")
  const footer = document.getElementById("footer-main")
  const footerlist = document.getElementById("all-list-jp")
  
  nav.addEventListener('mouseover', function() {
   navList.setAttribute("style", "display:block;")
  })
  navList.addEventListener('mouseout', function() {
   navList.setAttribute("style", "display:hidden")
  })
  

  navleft.addEventListener('mouseover', function() {
   navleftlist.setAttribute("style", "display:block;")
  })
  navleftlist.addEventListener('mouseout', function() {
   navleftlist.setAttribute("style", "display:hidden")
  })


  footerlist.addEventListener('click', function() {
   footer.setAttribute("style", "display:flex;")
  })
  // footerlist.addEventListener('click', function() {
  //   footer.setAttribute("style", "display:flex;")

});