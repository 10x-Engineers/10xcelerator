class c_889_1;
    integer i = -147;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_889_1;
    c_889_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10z1000101x1zxx0xxz1x1xx0z1zxxxxxzxxzxxxzxzzxzxzxzxzxxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
