class c_792_1;
    integer i = -130;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_792_1;
    c_792_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz01x00zx011x0zzzz0z1x0z0zxxx1zxxzzxzxzxxzzzxxxzzxxzzzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
