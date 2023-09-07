class c_2295_1;
    integer i = -381;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2295_1;
    c_2295_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0x00x01x1xzx010z11z0x1x11xzz1xxxzxxxxxzzxxxxxzxzxzxxxxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
