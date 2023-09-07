class c_3428_1;
    integer i = -570;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3428_1;
    c_3428_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zz11010z1x0zx1001zz0xxx0011x1zzxxzzxxxzzxzzzxzzzxxzzzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
