$(function()
{
  $('#DoTest').click(function(){
     // alert('click');
     start();
     $('#test-detail').hide();
     $('#testing').show();
     var id = $('div[name="test"]').attr('id');
     var $form = $("#q_a"),
        $answers = $('#answers'),
        $group, $item;

    $.post('./js/ajax.php', {"id": id}, function(data) {
      $.each(JSON.parse(data), function(index, value) {
         $group = $("<ul>", {
         "id": "q" + index,
          "class": "question"
    }).appendTo($answers);  
    $group.before('<strong class="qContent">'+ (index+1) +'. ' + value.question + '</strong>');
    $item = [];   
    $.each(value.options, function(sub_index, sub_value) {
      $item[sub_index] = '<li><input id="q' + index + 'a' + sub_index +
       '" class="items" type="radio" name="answer' + index + 
       '" value="' + (sub_index+1) + '"><label for="q' + index + 'a' + sub_index + '">&nbsp' + 
       sub_value + '</label></li>';
    });
    $group.html($item.join(""));
    });
     
  $form.on("submit", function(e) {
    e.preventDefault();
     var correct=0;
    $.each($(this).serializeArray(), function(index, value) {
      var check = value.name.match(/\d/)[0],
       $q = $("#q" + check);
      // alert(check);
      if (JSON.parse(data)[check].answer === value.value) {correct++;} 
      });
      if (correct===0)
      {
        setTimeout('Redirect()',2000);
        swal("Oh...no!", "Your correct answers: "+ correct + ". Try again!", "error");
      }
      else
      {
        setTimeout('Redirect()',2000);
        swal({
          title: "Sweet!",
          text: "Correct answers " + correct
          });
      }
    });  
    });
  });
})

function Redirect() {
  window.location="index.php";
}

var timeout = null;
var minutes = null;
var seconds = null;
function start()
{
  if (minutes === null)
  {
    minutes = parseInt($('#timelimmit').attr('value')) - 1;
    seconds = 59;
  }
     
    //  alert(minutes);
     // seconds = 0;
      if (seconds == -1){
          minutes -= 1;
         seconds = 59;
    }
    if (minutes == -1){
      clearTimeout(timeout);
      alert('Time out');
      window.location="index.php";
      return false;
  }
  $('#m').text(minutes);
  $('#s').text(seconds);

  timeout = setTimeout(function(){
    seconds--;
    start();
      }, 1000);
}


function stop(){
  clearTimeout(timeout);
}