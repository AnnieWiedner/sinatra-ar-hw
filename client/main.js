$.ajax({
  method: GET,
  url: 'http://localhost:9393/authors/1',
  success: function(response){
    $('#name').text(response.library.name);
    $('#address').text(response.library.age);
    for (i = 0; i < response.books.length; i++) {
      $('#books').append('<li>' + response.books[i].title + '</li>');
    }
  }
})

$.ajax({
  method: GET,
  url: 'http://localhost:9393/authors/',
  success: function(response){
    $('#name').text(response.library.name);
    $('#address').text(response.library.address);
    for (i = 0; i < response.books.length; i++) {
      $('#books').append('<li>' + response.books[i].title + '</li>');
    }
  }
})

$('body').on('click', '.link', function(e){
  e.preventDefault();
  var url = $(e.target).attr('href');
  $.ajax({
    method: 'GET',
    url: url,
    success: function(response){
      $('#name').text(response.name);
      $('#address').text(response.age);
    }
  })
})
