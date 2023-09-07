class c_239_1;
    integer i = -38;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_239_1;
    c_239_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z000x000xxxzx1x0z00z1x010x101x0zxxzxzzxzzzxxxxxzzxxxzxxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
