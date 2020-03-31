/// @description Insert description here
// You can write your code in this editor
yy = 270
yy1 = 50
yy2 = 100
yy3i = 80

if global.draw1 == 1 {
	draw_set_font(russia);
	draw_text(30,25,"Большая паучиха");
	if (bezumie < 75 and bezumie > 25){
		draw_set_color(c_black);
		draw_text(30,55,"Нейтральный");
		}
		else if (bezumie < 25){
	draw_set_color(c_lime);
	draw_text(30,55,"Друг");
	instance_destroy(obj_spider)
	instance_create_layer(430, 230, "Instances", obj_oskolki_yellow)
	
}else{
	draw_set_color(c_red);
	draw_text(30,55,"Враг");
}
if(step == 1){
	draw_set_color(c_black);
	draw_text(100,yy,"Вы можете:");
	draw_text(100,yy + yy1,"1.Поговорить");
	draw_text(400,yy + yy1,"2.Пригласить на чай");
	draw_text(100,yy + yy2,"3.Осмотреть");
	draw_text(400,yy + yy2,"4.Прихлопнуть");
}
if (tumbler == 1 and step == 2){
	draw_set_color(c_black);
	draw_text(100,yy + yy1,"Она рассказывает о своих паучках. Как ");
	draw_text(100,yy + yy3i,"они покушали на завтрак мышкой. Мило.");
}
if (tumbler == 2 and step == 2){
	draw_set_color(c_black);
	draw_text(100,yy + yy1,"Она отказалась. Но она ");
	draw_text(100,yy + yy3i,"сама хочет угостить вас чаем.");
}
if (tumbler == 3 and step == 2){
	draw_set_color(c_black);
	draw_text(100,yy + yy1,"Она очень большая и красивая.");
	draw_text(100,yy + yy3i,"А на ее брюшке завязан синий шарф.");
}
if (tumbler == 4 and step == 2){
	draw_set_color(c_black);
	draw_text(100,yy + yy1,"Попытка ударить ее не удалась");
	draw_text(100,yy + yy3i,"Она слишком большая и сильная для меня.");
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
	draw_text(100,yy,"Вы на нее кажется повлияли");
	draw_text(100,yy + yy1,"1.Обнять");
	draw_text(400,yy + yy1,"2.Рассказать о себе");
	draw_text(100,yy + yy2,"3.Пошутить");
	draw_text(400,yy + yy2,"4.Ударить");
}
if (tumbler == 1 and step == 4){
	draw_set_color(c_black);
	draw_text(100,yy + yy1,"Она смущенно отвернулась, но видимо ");
	draw_text(100,yy + yy3i,"ей понравилось. Она обнимает вас сильнее.");
}
if (tumbler == 2 and step == 4){
	draw_set_color(c_black);
	draw_text(100,yy + yy1,"Она делает вид что ей это");
	draw_text(100,yy + yy3i,"интересно, но видимо она не умеет лгать.");
}
if (tumbler == 3 and step == 4){
	draw_set_color(c_black);
	draw_text(100,yy + yy1,"Она посмеялась и пошутила в ответ.");
	draw_text(100,yy + yy3i,"Вы посмеялись в ответ");
}
if (tumbler == 4 and step == 4){
	draw_set_color(c_black);
	draw_text(100,yy + yy1,"Она расстроилась.");
	draw_text(100,yy + yy3i,"Но ей все равно на ваши слабые удары.");
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
	alarm[0] = 150
}
	
}