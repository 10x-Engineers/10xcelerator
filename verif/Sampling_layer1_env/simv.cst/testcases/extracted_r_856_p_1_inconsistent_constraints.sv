class c_856_1;
    integer i = -141;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_856_1;
    c_856_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000z0z10xxx1100z0z01110zxx1zxxzxxzxxzzzzxxxzxzxzzxxxzzzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
