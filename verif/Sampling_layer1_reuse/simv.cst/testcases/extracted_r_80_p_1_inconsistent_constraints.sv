class c_80_1;
    integer i = -12;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_80_1;
    c_80_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00001z11z1x1z0xxxzxx1z01x110x1xzxzxxzxzzxzxzxxxxxzzzzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
