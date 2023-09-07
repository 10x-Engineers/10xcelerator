class c_1145_1;
    integer i = -189;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1145_1;
    c_1145_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x01001x1zzxxzxzzxx10xz1zx0zxx0xxxxxzzzxxxxxzzxzzzzzxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
