class c_2550_1;
    integer i = -423;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2550_1;
    c_2550_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0x0z1000110z1110111101xz010xxxxzxzxxzzxzxxxxzzxxzxzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
