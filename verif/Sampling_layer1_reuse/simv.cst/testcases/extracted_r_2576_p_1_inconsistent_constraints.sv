class c_2576_1;
    integer i = -428;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2576_1;
    c_2576_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zz1z0xxxxxz1z0z1zx1x01x000x0zxxzxxxzxxxxxxxzxzzzxzxxxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
