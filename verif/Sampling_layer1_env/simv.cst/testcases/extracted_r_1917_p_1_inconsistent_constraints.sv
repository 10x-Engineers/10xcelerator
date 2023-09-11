class c_1917_1;
    integer i = -318;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1917_1;
    c_1917_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxxzx001001x01xz1z0z10z01x111zzzxzxxxzxzzxxxzzzzxxxxxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
