class c_2110_1;
    integer i = -350;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2110_1;
    c_2110_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11100x0z0xzzxzzx0x101z1zzzx110zxxxzzzxzxzxzxzzxzzxxzzxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
