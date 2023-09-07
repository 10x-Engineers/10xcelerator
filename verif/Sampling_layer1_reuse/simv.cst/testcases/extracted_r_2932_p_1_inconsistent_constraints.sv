class c_2932_1;
    integer i = -487;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2932_1;
    c_2932_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01x11zzzx1xx000xx0zx0z0x1z1zzzxzzxzzzzzzxzzzzxzxxzxzxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
