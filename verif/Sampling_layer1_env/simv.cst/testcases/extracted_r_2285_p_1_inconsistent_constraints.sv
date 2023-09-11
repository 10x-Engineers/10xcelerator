class c_2285_1;
    integer i = -379;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2285_1;
    c_2285_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx10x11zx001z1zz0z11z11011zx01zxxzxzzxzxxxxzzxxxzzzzxxxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
