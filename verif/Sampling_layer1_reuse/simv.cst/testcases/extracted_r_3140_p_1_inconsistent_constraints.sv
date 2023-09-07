class c_3140_1;
    integer i = -522;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3140_1;
    c_3140_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z1x0001zz0z00xxx1zxxzxxz1zxzzzzzxzxxxxxzzxxxzxzzxzzxzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
