class c_2179_1;
    integer i = -362;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2179_1;
    c_2179_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx1x01101xx10z10z0100zxzxzxx00zxxzxzzxzzxxxzzzxzzxzzzxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
