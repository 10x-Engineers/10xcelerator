class c_984_1;
    integer i = -162;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_984_1;
    c_984_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11111z111xzxzz1xx1010x00xxxx0z0zzzzxzxzzzzxzxxzxxzxzxzzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
