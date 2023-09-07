class c_2592_1;
    integer i = -430;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2592_1;
    c_2592_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101101zzz001zxx0x0xxx10xzx0z0z1xxzxxzxxxxzzxxzzzzzzxzxzzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
