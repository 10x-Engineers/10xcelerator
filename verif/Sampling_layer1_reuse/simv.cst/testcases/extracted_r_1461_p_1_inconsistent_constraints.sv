class c_1461_1;
    integer i = -242;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1461_1;
    c_1461_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z11z1xx0xzz10z01x11xzx00x1x1xzxzxzxzxxzzxzxxzxzzxxxzzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
