class c_2726_1;
    integer i = -453;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2726_1;
    c_2726_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zx0z10xzzzx0xxz1xzx0z11zxxxxxxxxzxxzzzzzxxzzzzxxzxzzzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
