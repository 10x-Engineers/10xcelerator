class c_3344_1;
    integer i = -556;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3344_1;
    c_3344_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx000z1zzxzzx0z1xx10xx01010z01zzxzxxzzxzzxzzxzzzxzzzzxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
