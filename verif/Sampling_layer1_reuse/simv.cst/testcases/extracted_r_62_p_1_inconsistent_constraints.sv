class c_62_1;
    integer i = -9;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_62_1;
    c_62_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1zzx100xzzx1xx0xxx0xz11zx1z10zzzzzzxzxzxzxxzzzxxxzxzzxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
