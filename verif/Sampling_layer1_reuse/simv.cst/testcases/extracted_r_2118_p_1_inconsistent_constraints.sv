class c_2118_1;
    integer i = -351;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2118_1;
    c_2118_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001011x0xzz1xx1x0xxx110100zx0z0zzxzzzxzxxxzxzxxzxzxxxzzxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
