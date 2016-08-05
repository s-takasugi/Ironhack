// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  
  createScheduler();

  if ($('body').attr('id') == 'devise/sessions-new') {
    drawTag();
  }

  $('#sortable').sortable({
    revert: true,
  });
  $('.hour').sortable({
    revert: true,
    items: "tr:not(.new-item)"
  });
  $('.new-item').draggable({
    connectToSortable: "#sortable, .hour",
    cursor: "pointer",
    stack: ".new-item",
  });
  $( ".droppable" ).droppable({
    drop: function( event, ui ) {
      console.log('dragged')
      day = this.getAttribute('data-day')
      time = this.getAttribute('data-time')
      id = ui.draggable[0].getAttribute('data-id')
      type = ui.draggable[0].getAttribute('data-type')
      $.ajax({
        type: 'post',
        url: '/trip_planners/add_schedule',
        dataType: "json",
        data: { 'day': day, 'time': time, 'id': id, 'type': type },
        success: function(){
          console.log('success!')
        },
        error: function(error){
          console.log('error')
        },
      })
    }
  });
});

function createScheduler() {
  var ul = $('<ul class="hour">');
  for (var i = 6; i < 25; i++) {
    var time = ([i] + ':00');
    var ul = $('<ul class="hour droppable" data-day=1 data-time=' + i + '>').text(time);
    $('.scheduler').append(ul);
  };
}

function drawTag() {
  var canvas = $('#login-tag-canvas');
  var ctx = canvas[0].getContext("2d");
  console.log(canvas)
  console.log(ctx);
  ctx.moveTo(1,1);
  ctx.lineTo(415,1);
  ctx.moveTo(415,1);
  ctx.lineTo(499,85);
  ctx.moveTo(499,85);
  ctx.lineTo(499,215);
  ctx.moveTo(499,215);
  ctx.lineTo(415,299);
  ctx.moveTo(415,299);
  ctx.lineTo(1,299);
  ctx.moveTo(1,299);
  ctx.lineTo(1,1);

  ctx.moveTo(10,10);
  ctx.lineTo(410,10);
  ctx.moveTo(410,10);
  ctx.lineTo(490,90);
  ctx.moveTo(490,90);
  ctx.lineTo(490,210);
  ctx.moveTo(490,210);
  ctx.lineTo(410,290);
  ctx.moveTo(410,290);
  ctx.lineTo(10,290);
  ctx.moveTo(10,290);
  ctx.lineTo(10,10);
  ctx.strokeStyle = '#fff';
  ctx.lineWidth = 2;
  ctx.stroke();

  ctx.beginPath();
  ctx.arc(450,150,12,0,2*Math.PI);
  ctx.lineWidth = 2;
  ctx.strokeStyle = '#fff';
  ctx.stroke();
};
