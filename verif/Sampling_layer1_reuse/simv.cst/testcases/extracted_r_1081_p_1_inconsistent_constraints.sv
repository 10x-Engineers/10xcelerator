class c_1081_1;
    integer i = -179;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1081_1;
    c_1081_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00z1zz0xzzzxzz10z1zx0x010z10z1xxzxxzxzzxzzzxxzzxzxzxzzxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
