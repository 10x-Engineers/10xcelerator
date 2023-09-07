class c_1841_1;
    integer i = -305;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1841_1;
    c_1841_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0010zz0z101000z0z00x011x00xx0xzxxxxzxxxxzxxzzzxzxzxzxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
