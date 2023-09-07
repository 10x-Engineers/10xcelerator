class c_2992_1;
    integer i = -497;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2992_1;
    c_2992_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001x111x0z11z0z11z100xxxx1x01110xxxxzzxzxxzxxzxxzxxxzzzxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
