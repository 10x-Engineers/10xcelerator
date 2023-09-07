class c_1095_1;
    integer i = -181;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1095_1;
    c_1095_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx011xz0xzz0z1011xz100xz1xxzz001xzxxxzzxxxxxxxzzxxzzzxxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
