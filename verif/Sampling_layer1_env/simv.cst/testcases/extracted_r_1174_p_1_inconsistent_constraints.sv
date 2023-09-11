class c_1174_1;
    integer i = -194;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1174_1;
    c_1174_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0x00zx0zx1zx1001x1zzx1zz1zx00zxzzzzzxxxxxxzxzxzxzzxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
