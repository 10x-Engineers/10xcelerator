class c_2221_1;
    integer i = -369;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2221_1;
    c_2221_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxx11xx0z00xx1zx0z10zx1z0zxx00xzxxxzxxzxxzzxxxxzxzxxxzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
