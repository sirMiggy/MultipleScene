public class MainScene : SEScene
{
    SESprite color1;
    SESprite color2;
    SESprite color3;
    SESprite color4;
	SESprite fg;
	SESprite display;

    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        color1 = add_sprite_for_color(Color.instance("red"), 0.5*get_scene_width(), 0.5*get_scene_height());
        color1.move(0,0);

        color2 = add_sprite_for_color(Color.instance("blue"), 0.5*get_scene_width(), 0.5*get_scene_height());
        color2.move(0.5*get_scene_width(),0);

        color3 = add_sprite_for_color(Color.instance("green"), 0.5*get_scene_width(), 0.5*get_scene_height());
        color3.move(0,0.5*get_scene_height());

        color4 = add_sprite_for_color(Color.instance("white"), 0.5*get_scene_width(), 0.5*get_scene_height());
        color4.move(0.5*get_scene_width(),0.5*get_scene_height());

		 rsc.prepare_font("titlefont","ariel bold color=#551a8b",100);
       
		rsc.prepare_image("img","home",get_scene_width()*0.25,get_scene_height()*0.15);
		
		fg= add_sprite_for_image(SEImage.for_resource("img"));
		fg.move(0,get_scene_height()-fg.get_height());
    }

    public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new FirstScene());
        }
        else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new SecondScene());
        }
        else if(pi.is_inside(0,0.5*get_scene_height(), 0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new ThirdScene());
        }
        else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new FourthScene());
        }
    }

    public void cleanup() {
        base.cleanup();
    }
}