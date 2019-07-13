// const popup = () => {
//   jQuery(document).ready(function($){
//     //open popup
//     $('.popup-trigger').on('click', function(event){
//       event.preventDefault();
//       // $('.popup').addClass('is-visible');
//       $(event.currentTarget).parent().find(".popup").addClass('is-visible');
//
//     });
//
//     //close popup
//     $('.popup').on('click', function(event){
//       if( $(event.target).is('.popup-close') || $(event.target).is('.popup') ) {
//         event.preventDefault();
//         $(this).removeClass('is-visible');
//       }
//     });
//     //close popup when clicking the esc keyboard button
//     $(document).keyup(function(event){
//         if(event.which=='27'){
//           $('.popup').removeClass('is-visible');
//         }
//       });
//   });
//   // popupTrigger = document.querySelector(".popup-trigger");
//
//   // popupTrigger.parentElement.querySelector(".popup").classList.add("is-visible");
// }
// export { popup };
