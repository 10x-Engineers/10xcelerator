class c_1386_1;
    integer i = -229;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1386_1;
    c_1386_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1xzzzzxzzx0xz10z1x01010z1z11xzxzxxzzzxzzzxzzxxzzxxxzzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
