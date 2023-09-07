class c_1674_1;
    integer i = -277;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1674_1;
    c_1674_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0xzzx1xxzx0x100zx111x1x000x10zxxxzxzzxzzxxzzxxxzxxzzxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
