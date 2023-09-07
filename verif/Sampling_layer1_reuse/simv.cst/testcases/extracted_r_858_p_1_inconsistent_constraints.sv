class c_858_1;
    integer i = -141;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_858_1;
    c_858_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1xzx010z0zzxxxzz00z1xxx1z000xzxzzxzxzxxzzzzzzzzzzzxxxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
