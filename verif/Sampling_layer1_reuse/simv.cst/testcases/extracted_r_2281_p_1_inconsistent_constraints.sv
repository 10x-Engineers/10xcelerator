class c_2281_1;
    integer i = -379;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2281_1;
    c_2281_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzzz00xx0x01110z0011zzx00z01zz1xzzxxzxxzzzzzxxzzzxzxxxzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
