class c_2872_1;
    integer i = -477;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2872_1;
    c_2872_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z1xxzx1x000zz000xxz10zzx11zxxzzxxxzxxxzxxxxxxzzzzzzxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
