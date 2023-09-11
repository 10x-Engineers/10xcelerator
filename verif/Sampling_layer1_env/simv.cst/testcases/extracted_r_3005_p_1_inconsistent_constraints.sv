class c_3005_1;
    integer i = -499;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3005_1;
    c_3005_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x100zx00zxz1z011101000x0x1010x1zxzzzxxxzzzzxzzzxxzxzxxxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
