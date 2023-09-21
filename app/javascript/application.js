// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery"
import "materialize";

document.addEventListener('turbo:load', () => {
  M.AutoInit();
  var elem = document.querySelector('#slide-out');
  var instance = new M.Sidenav(elem, {});
});
document.addEventListener('turbo:before-visit', () => {
  M.AutoInit();
  var elem = document.querySelector('#slide-out');
  var instance = M.Sidenav.getInstance(elem);
  if (instance) {
    instance.destroy();
  }
});

// document.addEventListener('turbo:before-cache', () => {
//   console.log("before cache")
// });
// document.addEventListener('turbo:before-render', () => {
//   console.log("before render")
// });
// document.addEventListener('turbo:before-visit', () => {
//   console.log("before visit")
// });
// document.addEventListener('turbo:load', () => {
//   console.log("before load")
// });
