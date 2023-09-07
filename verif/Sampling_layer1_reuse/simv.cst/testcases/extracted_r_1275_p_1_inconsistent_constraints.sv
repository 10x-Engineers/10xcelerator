class c_1275_1;
    integer i = -211;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1275_1;
    c_1275_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0z10110xzzxzx0x0x10zz1z0xx00xzzxxxxxxzxxzxzxzxzzxxxzzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
