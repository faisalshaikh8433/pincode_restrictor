var elements =
  "<div style='margin-top: 1rem;'>" +
  "<strong style='color: lightcoral; padding: 2px;'>" +
  "Please enter the pincode to verify we deliver in your area or not !" +
  "</strong>" +
  "</div>" +
  "<div style='margin-top: 1rem;'>" +
  "<input type='text' id='pincode' placeholder='pincode' autofocus />" +
  "<input type='button' class='btn' value='Verify' id='verify_pincode' />" +
  "</div>";
// var mainElement = document.getElementById("shopify-section-cart-template");
var parser = new DOMParser();
var html = parser.parseFromString(elements, "text/html");
document.querySelector("body").append(elements);
