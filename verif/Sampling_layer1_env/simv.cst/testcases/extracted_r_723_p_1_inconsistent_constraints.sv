class c_723_1;
    integer i = -119;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_723_1;
    c_723_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzxz0zx1x0xzx1zxxxxzx00zzx01xzzzxxzxzxzxxzzzxxxzzxzxxxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
