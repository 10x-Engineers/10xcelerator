class c_62_1;
    integer i = -60;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_62_1;
    c_62_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1zzxz11z1zzxx1x11z0xz11z01z10xxzxxzxxzzxzzxxxxzzzxzxxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
