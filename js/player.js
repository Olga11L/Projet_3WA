function change_music(music,titre)
{
document.getElementById("audioPlayer").pause();
document.getElementById("audioPlayer").setAttribute('src', music);
document.getElementById("audioPlayer").load();
document.getElementById("audioPlayer").play();
document.getElementById("titre").innerHTML="En cours de lecture: "+titre;
}

