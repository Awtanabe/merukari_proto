$(function() {

  function buildHTML(){
    debugger;
    var html = ` <div class ="my-account">
                   <div class ="header">
                    
                   </div>
                   <div class ="body">
                   </div>
                 </div>


    <p>aaaa</p>`
    return html
  }

  $("#avatar-text").on('click', function(){
    var html = buildHTML();

    $(this).append(html)

  })
})
