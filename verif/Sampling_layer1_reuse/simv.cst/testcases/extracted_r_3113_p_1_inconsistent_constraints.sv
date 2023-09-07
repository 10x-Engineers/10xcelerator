class c_3113_1;
    integer i = -517;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3113_1;
    c_3113_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11zzxzxx10z01x10z011z11x0z10x0zzzzzxzzzxzzzzzxxxzxzzxzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
