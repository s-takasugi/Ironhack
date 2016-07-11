// Write your Pizza Builder JavaScript in this file.
$(document).ready(function (){

$('.btn').toggleClass('active')
$('.sauce').toggleClass('sauce-white')
$('.crust').toggleClass('crust-gluten-free')
$('.pep').toggle()
$('.mushroom').toggle()
$('.green-pepper').toggle()
$('li:contains("pepperoni")').toggle();
$('li:contains("mushrooms")').toggle();
$('li:contains("green")').toggle();
$('li:contains("white sauce")').toggle();
$('li:contains("gluten-free crust")').toggle();

$('strong').text("$ " + Price())

function Price () {
 var totalPrice = 10;
if ($('.btn-pepperoni').hasClass('active')) {
  totalPrice += 1};
if ($('.btn-mushrooms').hasClass('active')) {
  totalPrice += 1};
if ($('.btn-green-peppers').hasClass('active')) {
  totalPrice += 1};
if ($('.btn-sauce').hasClass('active')) {
  totalPrice += 3};
if ($('.btn-crust').hasClass('active')) {
  totalPrice += 5};
return totalPrice
}
  $('strong').text("$ " + Price());

  $('.btn-pepperoni').click(function(){
    $('.pep').toggle();
    $('.btn-pepperoni').toggleClass('active');
    $('li:contains("pepperoni")').toggle();
    $('strong').text("$ " + Price());
  });

  $('.btn-mushrooms').click(function(){
    $('.mushroom').toggle();
    $('.btn-mushrooms').toggleClass('active');
    $('li:contains("mushrooms")').toggle();
    $('strong').text("$ " + Price());
  });

  $('.btn-green-peppers').click(function(){
    $('.green-pepper').toggle();
    $('.btn-green-peppers').toggleClass('active');
    $('li:contains("green")').toggle();
    $('strong').text("$ " + Price());
  });

  $('.btn-sauce').click(function(){
    $('.sauce').toggleClass('sauce-white');
    $('.btn-sauce').toggleClass('active');
    $('li:contains("white sauce")').toggle();
    $('strong').text("$ " + Price())
  });

  $('.btn-crust').click(function(){
    $('.crust').toggleClass('crust-gluten-free');
    $('.btn-crust').toggleClass('active');
    $('li:contains("gluten-free crust")').toggle();
    $('strong').text("$ " + Price());
  });
})
