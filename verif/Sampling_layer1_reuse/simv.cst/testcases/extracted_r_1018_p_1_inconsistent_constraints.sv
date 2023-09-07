class c_1018_1;
    integer i = -168;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1018_1;
    c_1018_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xz1z0xzxzx0x01xzzxzx0010z00x1xxzxxxzzzxzzzxxzzxxzxxzzxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
