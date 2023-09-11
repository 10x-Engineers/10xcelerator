class c_452_1;
    integer i = -74;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_452_1;
    c_452_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1110zzz11z111z1z0z11x00001zx0xzzzxxxzxzzxzxxzzxzzzzzzzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
