class c_1444_1;
    integer i = -239;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1444_1;
    c_1444_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x01zxzz1xxx11xz00xzxzz01001z1xzxxzxxzxzzxzzxxzxxzzxxxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
