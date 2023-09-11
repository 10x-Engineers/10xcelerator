class c_2021_1;
    integer i = -335;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2021_1;
    c_2021_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zxxzz100z10zz1z11xxx100x1z1z0zzzxzzxxxxzzzxxxzxzxxxxzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
