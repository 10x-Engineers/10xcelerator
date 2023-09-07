class c_2559_1;
    integer i = -425;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2559_1;
    c_2559_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z01xxzz10xxxxz01x1xxz011xx0z1xzxxxxzxzxxzxzxxxxxzzzzxzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
