class c_1958_1;
    integer i = -325;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1958_1;
    c_1958_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x0x1001xx110zxzzzzxx11z1zzxzx1xxzzxxzzxzxxxxzxxzzxzxxzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
