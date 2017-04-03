

if(castAffliction){
    createonce++;
    global.castTimeAfflictionP2++;
    castTimeAffliction++;
    if(createonce==1){
        spell=instance_create(0,0,obj_player2_spell_control_affliction);
    }
    if(place_meeting(x,y,obj_fireball_P1)){
        castTimeAffliction =0;
        global.castTimeAfflictionP2=1;
        with(spell){
            instance_destroy();
        }
        createonce=0;
    }
    
}
if(!castAffliction){
    castTimeAffliction = 0;
    createonce=0;
    if(global.castTimeAfflictionP2>1)
    {
        with(spell){
            instance_destroy();
        }
    }
    global.castTimeAfflictionP2=1;
}
if(castTimeAffliction == 60){
    affliction = instance_create(x,y,obj_affliction_p2);
    affliction.speed = 10;
    global.castTimeafflictionP2=1;
}
