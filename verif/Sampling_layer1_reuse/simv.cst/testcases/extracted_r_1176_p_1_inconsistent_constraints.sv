class c_1176_1;
    integer i = -194;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1176_1;
    c_1176_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z1z1x0x0x1zxzxzx0x0z001zxx10zzzzxxxxzxzxzxzxzxxzzzzzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
