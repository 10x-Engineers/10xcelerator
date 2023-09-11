class c_2626_1;
    integer i = -436;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2626_1;
    c_2626_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z110x1zz1z0zx1x1z0xxxxxxxz0x0zxxxxxxzzzxzxxxzzxzxxxzxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
