$(document).on('turbolinks:load', function() {
    //your code
    console.log('test is working')

    $('#addBook').click(function(){
        index = $('.book-name').length + 1;
        $('#nestedFields').append('<input class="form-control book-name" type="text" name="author[books_attributes]['+index+'][name]" id="author_books_attributes_'+index+'_name">')
    })  
    
});

