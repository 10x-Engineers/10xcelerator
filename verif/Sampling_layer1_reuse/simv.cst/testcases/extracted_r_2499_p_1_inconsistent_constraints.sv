class c_2499_1;
    integer i = -415;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2499_1;
    c_2499_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x10xzz11zx1x0001z1zxxzzxx0101zzxxxzxzzzxxxzzzzxxxxzzzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
