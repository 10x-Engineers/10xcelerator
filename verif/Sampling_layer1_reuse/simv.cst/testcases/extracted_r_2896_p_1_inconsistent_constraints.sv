class c_2896_1;
    integer i = -481;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2896_1;
    c_2896_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz1z1011zxxzx1x01x0xzzxz10x0xxxxxzxxxxxzzzxxzxxzxxzxzxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
