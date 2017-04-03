

if(castAffliction){
    createonce++;
    global.castTimeAfflictionP1++;
    castTimeAffliction++;
    if(createonce==1){
        spell=instance_create(0,0,obj_player1_spell_control_affliction);
    }
    if(place_meeting(x,y,obj_fireball_P2)){
        castTimeAffliction =0;
        global.castTimeAfflictionP1=1;
        with(spell){
            instance_destroy();
        }
        createonce=0;
    }
    
}
if(!castAffliction){
    castTimeAffliction = 0;
    createonce=0;
    if(global.castTimeAfflictionP1>1)
    {
        with(spell){
            instance_destroy();
        }
    }
    global.castTimeAfflictionP1=1;
}
if(castTimeAffliction == 60){
    affliction = instance_create(x,y,obj_affliction_p1);
    affliction.speed = 10;
    global.castTimeafflictionP1=1;
}
