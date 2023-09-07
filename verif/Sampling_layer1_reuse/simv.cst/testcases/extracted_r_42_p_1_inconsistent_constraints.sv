class c_42_1;
    integer i = -5;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_42_1;
    c_42_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0010z1x00zxz1z1z001x110zxx1xxxzzxxzxzxxzxzzxxxzzxxxzxxzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
