class c_1144_1;
    integer i = -189;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1144_1;
    c_1144_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxz01zx1010z0z0101zzxz11x0100zzxzzzzxxxxxxzzzzxzzzzzxzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
