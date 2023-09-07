class c_2090_1;
    integer i = -347;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2090_1;
    c_2090_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z0zxx11zz1z10xz0011zzxz0x0x0zzzzxzxzxxzxzzxxzxxxxxzxzzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
