class c_1134_1;
    integer i = -187;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1134_1;
    c_1134_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z00z11zz01111xx0z1zxz0xz11111zxxzzxxzxxzxxzzxzzzxzxzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
