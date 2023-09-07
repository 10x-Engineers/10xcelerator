class c_3266_1;
    integer i = -543;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3266_1;
    c_3266_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01100x1zz1xz000z100x0z1001xz1zzzxzzzzzzxxzxxxzzzxzzzzzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
