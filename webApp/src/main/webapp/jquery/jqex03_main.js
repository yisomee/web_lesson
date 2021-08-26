$(function (){

    $('#outer').on({
        mouseenter: function (){
            //실행문
            $('.outerMenu').css('display', 'block');
        }, mouseleave: function (){
            $('.outerMenu').css('display', 'none');
        }
    });
    $('#top').on({
        mouseenter: function (){
            //실행문
            $('.topMenu').css('display', 'block');
        }, mouseleave: function (){
            $('.topMenu').css('display', 'none');
        }
    });
    $('#dress').on({
        mouseenter: function (){
            //실행문
            $('.dressMenu').css('display', 'block');
        }, mouseleave: function (){
            $('.dressMenu').css('display', 'none');
        }
    });
    $('#bottom').on({
        mouseenter: function (){
            //실행문
            $('.bottomMenu').css('display', 'block');
        }, mouseleave: function (){
            $('.bottomMenu').css('display', 'none');
        }
    });
    $('#summer').on({
        mouseenter: function (){
            //실행문
            $('.summerMenu').css('display', 'block');
        }, mouseleave: function (){
            $('.summerMenu').css('display', 'none');
        }
    });

});