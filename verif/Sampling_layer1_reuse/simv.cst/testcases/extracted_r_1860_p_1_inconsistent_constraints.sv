class c_1860_1;
    integer i = -308;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1860_1;
    c_1860_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xz111z1zxz10zz1xx0x11xxx00xzxxxzxxzxxxxxzxzxxxzzxxzzxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
