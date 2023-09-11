class c_428_1;
    integer i = -70;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_428_1;
    c_428_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zx1zzxz0zx10x0100010z1100xx0xzxzxzzzxzxzxxzxzxzxxzxzxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
