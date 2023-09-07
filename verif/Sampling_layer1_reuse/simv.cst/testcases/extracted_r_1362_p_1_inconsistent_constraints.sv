class c_1362_1;
    integer i = -225;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1362_1;
    c_1362_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzz11z11x0z1101z000z011xzz1zx1xzxxzzxxxzxxzxzzzzxxxxxzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
