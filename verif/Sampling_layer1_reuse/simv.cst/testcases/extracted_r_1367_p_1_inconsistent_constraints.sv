class c_1367_1;
    integer i = -226;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1367_1;
    c_1367_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0x11z0xzzzxx1110x0010z0z100zzzzxzxzxxxzxxxzxzxxzxzxxzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
