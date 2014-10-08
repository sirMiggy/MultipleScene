
public class SecondScene : SEScene
{
    SESprite but1;
    SESprite but2;
    SESprite but3;
    SESprite but4;
	SESprite text2;
    SESprite text3;
    SESprite text4;
    SESprite text5;

	SESprite display;

    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("blue"), get_scene_width(), get_scene_height()));


	rsc.prepare_image("img","home",get_scene_width()*0.25,get_scene_height()*0.10);
   	 but1 =  add_sprite_for_image(SEImage.for_resource("img"));
        but1.move(0.75*get_scene_width(),0.6*get_scene_height());

        but2 = add_sprite_for_color(Color.instance("red"), 0.25*get_scene_width(), 0.25*get_scene_height());
        but2.move(0.75*get_scene_width(),0.7*get_scene_height());

        but3 = add_sprite_for_color(Color.instance("green"), 0.25*get_scene_width(), 0.25*get_scene_height());
        but3.move(0.75*get_scene_width(),0.8*get_scene_height());

        but4 = add_sprite_for_color(Color.instance("white"), 0.25*get_scene_width(), 0.25*get_scene_height());
        but4.move(0.75*get_scene_width(),0.9*get_scene_height());

		rsc.prepare_font("myfont","ariel bold color=#551a8b",40);
		 rsc.prepare_font("titlefont","ariel bold color=white",100);
		
		
      
        text3=add_sprite_for_text("Green","myfont");
        text3.move(0.75*get_scene_width(),0.8*get_scene_height());
        text4=add_sprite_for_text("White","myfont");
        text4.move(0.75*get_scene_width(),0.9*get_scene_height());
        text5=add_sprite_for_text("Red","myfont");
        text5.move(0.75*get_scene_width(),0.7*get_scene_height());
    
   display = add_sprite_for_text("Blue SCREEN","titlefont");
	display.move(0,get_scene_height()-display.get_height());
       
    }
    public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        
        if(pi.is_inside(0.75*get_scene_width(),0.6*get_scene_height(),get_scene_width(), 0.7*get_scene_height())) {
           switch_scene(new MainScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.7*get_scene_height(),get_scene_width(), 0.8*get_scene_height())) {
             switch_scene(new FirstScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.8*get_scene_height(),get_scene_width(), 0.9*get_scene_height())) {
            switch_scene(new ThirdScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.9*get_scene_height(),get_scene_width(), get_scene_height())) {
            switch_scene(new FourthScene());
        }
    }
    public void cleanup() {
        base.cleanup();
    }
}