class c_1822_1;
    integer i = -302;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1822_1;
    c_1822_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1xx0x11x1x0x11z100z010z1z00zxzxxxzzxxxxzzxzxzzzxxzzxxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
