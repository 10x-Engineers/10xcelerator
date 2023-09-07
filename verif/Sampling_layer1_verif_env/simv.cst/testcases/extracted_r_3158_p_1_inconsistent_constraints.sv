class c_3158_1;
    integer i = -525;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3158_1;
    c_3158_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzzx0zxx00zz10xxz111110xz1z0xzzxzzzzxxxxxxxxzzzxzzxzxzxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
