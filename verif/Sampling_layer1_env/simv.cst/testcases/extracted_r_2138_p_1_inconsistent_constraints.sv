class c_2138_1;
    integer i = -355;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2138_1;
    c_2138_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz1zzzz00xz0zz0x00xx10x011101xxxzzxzxzzzzxxzxzzzxxzxzxxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
