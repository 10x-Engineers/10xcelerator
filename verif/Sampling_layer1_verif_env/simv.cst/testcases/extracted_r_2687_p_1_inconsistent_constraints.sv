class c_2687_1;
    integer i = -446;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2687_1;
    c_2687_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1z00xx0x10x011xz11xxx11zz1xx0zzxxxzzxzxxzzzzxzzxzzzzxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
