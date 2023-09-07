class c_1121_1;
    integer i = -185;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1121_1;
    c_1121_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1xzz0x0x0zx0001zzzz1000xx01zxxxzxzxxzxxzxzxzzzxxxzxzxxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
