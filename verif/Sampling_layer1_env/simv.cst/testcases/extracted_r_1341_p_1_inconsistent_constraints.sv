class c_1341_1;
    integer i = -222;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1341_1;
    c_1341_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zx011z00zzzzz1111x10z1x0z0xzzxxxzxxxxxxxzzxxxxxzxxxxxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
