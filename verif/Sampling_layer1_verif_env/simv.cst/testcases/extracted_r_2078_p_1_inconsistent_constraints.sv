class c_2078_1;
    integer i = -345;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2078_1;
    c_2078_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10z0x11xxz1001zxzz1x1xx11xz100xzxzxxzzxzzzzzzxxxxzxzzzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
