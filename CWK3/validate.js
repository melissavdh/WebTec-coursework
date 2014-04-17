function validateForm() {
    
    var name = document.forms["entry"]["name"].value
    if ( name == null || name == "" || name == "your name" ) {
        alert("Please enter your name, or anonymous if you would rather not");
        return false;
    }
    
    var date = document.forms["entry"]["date"].value
    if ( date == null || date == "" || date == "the season" ) {
        alert("Please enter the season you stayed");
        return false;
    }
    
    var mail = document.forms["entry"]["mail"].value
    var at = mail.indexOf("@");
    var dot = mail.indexOf(".");
    if ( mail == null || mail == "" || mail == "your email" || at < 1 || dot < (at+2) || (dot+2) >= mail.length ) {
        alert("Please enter a valid email address.  We will keep it hidden.");
        return false;
    }
    
    var comment = document.forms["entry"]["comment"].value
    if ( comment == null || comment == "" || comment == "your review" ) {
        alert("Please enter your review");
        return false;
    }
    
    return true;
}
