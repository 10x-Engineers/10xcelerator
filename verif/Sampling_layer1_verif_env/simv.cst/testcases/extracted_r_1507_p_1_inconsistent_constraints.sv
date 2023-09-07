class c_1507_1;
    integer i = -250;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1507_1;
    c_1507_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x11110zxzxz10xzx11zzx1110z1z10xxxzzxzzzzxzxxzxxzxxxxxzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
