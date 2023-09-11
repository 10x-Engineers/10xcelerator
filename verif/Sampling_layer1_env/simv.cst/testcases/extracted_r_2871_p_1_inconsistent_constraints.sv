class c_2871_1;
    integer i = -477;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2871_1;
    c_2871_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz101011zzz010z1z0x0x1101z0x00zzxzzzxxzzzzzzzxxzxxzxzxxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
