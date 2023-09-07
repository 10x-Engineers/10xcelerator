class c_3047_1;
    integer i = -506;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3047_1;
    c_3047_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1x00x1xxz01zzzx0111x10xz1x0xzxzzzxxxxxzxxxzzxzzxzxzxzzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
