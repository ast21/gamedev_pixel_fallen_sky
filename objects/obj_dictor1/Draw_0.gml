/// @description Insert description here
// You can write your code in this editor
if global.draw1 == 1    {
	draw_set_font(russia);
	draw_text(10,15,"Большая паучиха");
	if (bezumie < 75 and bezumie > 25){
		draw_set_color(c_black);
		draw_text(10,65,"Нейтральный");
		}
		else if (bezumie < 25){
	draw_set_color(c_lime);
	draw_text(10,65,"Друг");
}else{
	draw_set_color(c_red);
	draw_text(10,65,"Враг");
}
if(step == 1){
	draw_set_color(c_black);
	draw_text(100,400,"Вы можете:");
	draw_text(100,550,"1.Поговорить");
	draw_text(400,550,"2.Пригласить на чай");
	draw_text(100,700,"3.Осмотреть");
	draw_text(400,700,"4.Прихлопнуть");
}
if (tumbler == 1 and step == 2){
	draw_set_color(c_black);
	draw_text(100,550,"Она рассказывает о своих паучках. Как ");
	draw_text(100,600,"они покушали на завтрак мышкой. Мило.");
}
if (tumbler == 2 and step == 2){
	draw_set_color(c_black);
	draw_text(100,550,"Она отказалась. Но она ");
	draw_text(100,600,"сама хочет угостить вас чаем.");
}
if (tumbler == 3 and step == 2){
	draw_set_color(c_black);
	draw_text(100,550,"Она очень большая и красивая.");
	draw_text(100,600,"А на ее брюшке завязан синий шарф.");
}
if (tumbler == 4 and step == 2){
	draw_set_color(c_black);
	draw_text(100,550,"Попытка ударить ее не удалась");
	draw_text(100,600,"Она слишком большая и сильная для меня.");
}
if keyboard_check(ord("E")) and step == 2{
	
	step+=1
	if tumbler == 1{
		bezumie-=15;
	}
	if tumbler == 2{
		bezumie-=25;
	}
	if tumbler == 3{
		bezumie-=10;
	}
	if tumbler == 4{
		bezumie+=25;
	}
	tumbler = 0;
}
if(step == 3){
	draw_set_color(c_black);
	draw_text(100,400,"Вы на нее кажется повлияли");
	draw_text(100,550,"1.Обнять");
	draw_text(400,550,"2.Рассказать о себе");
	draw_text(100,700,"3.Пошутить");
	draw_text(400,700,"4.Ударить");
}
if (tumbler == 1 and step == 4){
	draw_set_color(c_black);
	draw_text(100,550,"Она смущенно отвернулась, но видимо ");
	draw_text(100,600,"ей понравилось. Она обнимает вас сильнее.");
}
if (tumbler == 2 and step == 4){
	draw_set_color(c_black);
	draw_text(100,550,"Она делает вид что ей это");
	draw_text(100,600,"интересно, но видимо она не умеет лгать.");
}
if (tumbler == 3 and step == 4){
	draw_set_color(c_black);
	draw_text(100,550,"Она посмеялась и пошутила в ответ.");
	draw_text(100,600,"Вы посмеялись в ответ");
}
if (tumbler == 4 and step == 4){
	draw_set_color(c_black);
	draw_text(100,550,"Она расстроилась.");
	draw_text(100,600,"Но ей все равно на ваши слабые удары.");
}
if keyboard_check(ord("E")) and step == 4{
	step+=1
	if tumbler == 1{
		bezumie-=25;
	}
	if tumbler == 2{
		bezumie-=25;
	}
	if tumbler == 3{
		bezumie-=15;
	}
	if tumbler == 4{
		bezumie+=35;
	}
	tumbler = 0;
}
	
}