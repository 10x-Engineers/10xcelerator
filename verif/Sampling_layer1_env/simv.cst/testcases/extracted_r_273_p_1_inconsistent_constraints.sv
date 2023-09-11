class c_273_1;
    integer i = -44;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_273_1;
    c_273_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzz0x0001zxx0x0x1zxzz1xz01xz01xxzzxzzxxxzzxxzzzzxzzxxxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
