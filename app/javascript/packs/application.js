// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import "@fortawesome/fontawesome-free/js/all";


// $(document).on('turbolinks:load', function(){
//   $(".my-select-box").on('change',function(){
//     alert("The paragraph was clicked.");
//   });
// })

// $(document).on('turbolinks:load', function () {
//   $(".my-select-box").on("change", function () {
//     debugger
//     $.ajax({
//         url: "/total_price",
//         data: {
//           qty: $(this).val(),
//           id: $(this).attr("id")
//         },
//         type: "POST",
//         error: function () {alert('error');},
//         success: function (response) {
//           $('.' + Object.keys(response)[0]).html(Object.values(response)[0] + '$');
//           $('.cart-price').html(response.total_price + '$');
//          }
//     });
//   });
// });