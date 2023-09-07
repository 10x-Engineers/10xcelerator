class c_131_1;
    integer i = -20;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_131_1;
    c_131_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011100zx1zx1xx1xzx0z0xzzz1z0x1xzxxxxxxzzxzzzxzzzzzzzxxzxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
