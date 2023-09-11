class c_1397_1;
    integer i = -231;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1397_1;
    c_1397_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx010xxx10z11xxx1x000zx1zzz1xxxxzzxzzxxxxzxzzxzxxzxzxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
