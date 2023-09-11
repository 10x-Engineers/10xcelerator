class c_1747_1;
    integer i = -290;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1747_1;
    c_1747_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz01xz0x1zxz1100x101zzzx00000zzxxxxzxxzxzzzzxzxzxzzxxxzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
