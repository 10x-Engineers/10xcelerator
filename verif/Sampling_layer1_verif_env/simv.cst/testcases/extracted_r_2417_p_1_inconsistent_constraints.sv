class c_2417_1;
    integer i = -401;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2417_1;
    c_2417_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z10x10x1011xx00z11zz11x0z1x0xzxxzzxxxzxzxxzzzxxxxzzxxxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
