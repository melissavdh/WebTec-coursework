function markQuiz() {
    var mark = 0;
    
    var q1 = document.quiz.capital.length;
    var a1 = -1;
    for (var i = 0; i < q1; i++) {
        if (document.quiz.capital[i].checked) a1 = i;
    }
    if (a1 == -1) {
        alert("You haven't answered the first question.  Go on, at least try.");
        return false;
    }
    
    var q2 = document.quiz.city.length;
    var a2 = -1;
    for (var j = 0; j < q2; j++) {
        if (document.quiz.city[j].checked) a2 = j;
    }
    if (a2 == -1) {
        alert("You haven't answered the second question");
        return false;
    }
    
    var q3 = document.quiz.currency.length;
    var a3 = -1;
    for (var k = 0; k < q3; k++) {
        if (document.quiz.currency[k].checked) a3 = k;
    }
    if (a3 == -1) {
        alert("You haven't answered the third question.");
        return false;
    }
    
    var q4 = document.quiz.country.length;
    var a4 = -1;
    for (var m = 0; m < q4; m++) {
        if (document.quiz.country[m].checked) a4 = m;
    }
    if (a4 == -1) {
        alert("You haven't answered the fourth question.");
        return false;
    }
    
    var q5 = document.quiz.flag.length;
    var a5 = -1;
    for (var n = 0; n < q5; n++) {
        if (document.quiz.flag[n].checked) a5 = n;
    }
    if (a5 == -1) {
        alert("You haven't answered the fifth question.");
        return false;
    }
    
    var q6 = document.quiz.code.length;
    var a6 = -1;
    for (var p = 0; p < q6; p++) {
        if (document.quiz.code[p].checked) a6 = p;
    }
    if (a6 == -1) {
        alert("You haven't answered the sixth question.");
        return false;
    }
    
    var q7 = document.quiz.population.length;
    var a7 = -1;
    for (var q = 0; q < q7; q++) {
        if (document.quiz.population[q].checked) a7 = q;
    }
    if (a7 == -1) {
        alert("You haven't answered the seventh question.");
        return false;
    }
    
    if (document.quiz.capital[2].checked) mark++;
    if (document.quiz.city[0].checked) mark++;
    if (document.quiz.currency[2].checked) mark++;
    if (document.quiz.country[1].checked) mark++;
    if (document.quiz.flag[0].checked) mark++;
    if (document.quiz.code[3].checked) mark++;
    if (document.quiz.population[2].checked) mark++;
    
    if ( mark == 0 ) alert("Your final score is ABSOLUTELY NOTHING.  Did you do that on purpose?");
    if ( mark > 0 && mark < 4 ) alert("Your final score is " + mark + " out of 7.  Disappointing.");
    if ( mark > 3 && mark < 7 ) alert("Your final score is " + mark + " out of 7.  Not too bad.  But not perfect.");
    if ( mark == 7 ) alert("Full marks!  Has someone done this before?");
    
    return true;
    
}
